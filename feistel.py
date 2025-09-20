import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import random
from PRNG import chaotic_PRNG
from s_box_generation import build_sbox, print_sbox

BLOCK_SIZE = 32
HALF = BLOCK_SIZE // 2
ROUNDS = 5
KEY_SIZE = 16

def xtime(x): return ((x << 1) ^ 0x1B) & 0xFF if x & 0x80 else (x << 1) & 0xFF
def mul2(x): return xtime(x)
def mul3(x): return xtime(x) ^ x

def SubBytes(state, sbox):
    for r in range(4):
        for c in range(4):
            state[r][c] = sbox[state[r][c]]

def ShiftRows(state):
    state[1] = state[1][1:] + state[1][:1]
    state[2] = state[2][2:] + state[2][:2]
    state[3] = state[3][3:] + state[3][:3]

def MixColumns(state):
    for c in range(4):
        a0, a1, a2, a3 = state[0][c], state[1][c], state[2][c], state[3][c]
        state[0][c] = mul2(a0) ^ mul3(a1) ^ a2 ^ a3
        state[1][c] = a0 ^ mul2(a1) ^ mul3(a2) ^ a3
        state[2][c] = a0 ^ a1 ^ mul2(a2) ^ mul3(a3)
        state[3][c] = mul3(a0) ^ a1 ^ a2 ^ mul2(a3)

def AddRoundKey(state, roundKey):
    for r in range(4):
        for c in range(4):
            state[r][c] ^= roundKey[r*4 + c]

def F(in16, roundKey16, sbox):
    state = [[in16[r*4 + c] for c in range(4)] for r in range(4)]
    SubBytes(state, sbox)
    ShiftRows(state)
    MixColumns(state)
    AddRoundKey(state, roundKey16)
    return [state[r][c] for r in range(4) for c in range(4)]

# ======================= FEISTEL BLOCK =======================
def feistel_encrypt(block, roundKeys, sbox):
    L, R = block[:HALF], block[HALF:]
    for i in range(ROUNDS):
        F_out = F(R, roundKeys[i], sbox)
        R, L = [L[j] ^ F_out[j] for j in range(HALF)], R
    return L + R

def feistel_decrypt(block, roundKeys, sbox):
    L, R = block[:HALF], block[HALF:]
    for i in range(ROUNDS-1, -1, -1):
        F_out = F(L, roundKeys[i], sbox)
        L, R = [R[j] ^ F_out[j] for j in range(HALF)], L
    return L + R

# ======================= CBC MODE =======================
def pad_data(data):
    pad_len = (-len(data)) % BLOCK_SIZE
    return data + [0]*pad_len

def feistel_encrypt_cbc(plaintext, roundKeys, init_vector, sbox):
    plaintext = pad_data(plaintext)
    ciphertext = []
    prev_block = init_vector[:]
    for i in range(0, len(plaintext), BLOCK_SIZE):
        block = [plaintext[i+j] ^ prev_block[j] for j in range(BLOCK_SIZE)]
        block = feistel_encrypt(block, roundKeys, sbox)
        ciphertext.extend(block)
        prev_block = block[:]
    return ciphertext

def feistel_decrypt_cbc(ciphertext, roundKeys, init_vector, sbox):
    plaintext = []
    prev_block = init_vector[:]
    for i in range(0, len(ciphertext), BLOCK_SIZE):
        block = feistel_decrypt(ciphertext[i:i+BLOCK_SIZE], roundKeys, sbox)
        block = [block[j] ^ prev_block[j] for j in range(BLOCK_SIZE)]
        plaintext.extend(block)
        prev_block = ciphertext[i:i+BLOCK_SIZE]
    return plaintext

# ======================= ROUND KEYS =======================
def generate_subkeys(main_key, sbox):
    roundKeys = []
    for i in range(ROUNDS):
        roundKey = [(sbox[(main_key[(j+i) % KEY_SIZE] ^ (i*17 + j)) & 0xFF]) for j in range(KEY_SIZE)]
        roundKeys.append(roundKey)
    return roundKeys

# ======================= MAIN =======================
if __name__ == "__main__":
    # 1. Sinh S-box
    A = np.array([[0.0, 1/2, 1/20],
                  [1/3, 0.0, 1/3],
                  [1/20, 1/2, 0.0]], dtype=float)
    seq = chaotic_PRNG(A)
    sbox = build_sbox(seq)
    print_sbox(sbox)

    img = Image.open("input_image.png").convert("L")
    img_array = np.array(img, dtype=np.uint8)
    plaintext = img_array.flatten().tolist()

    main_key = [0x2A,0x7E,0x15,0x16,0x28,0xAE,0xD2,0xA6,
                0xAB,0xF7,0x15,0x88,0x09,0xCF,0x4F,0x3C]
    roundKeys = generate_subkeys(main_key, sbox)

    init_vector = [0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
                   0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
                   0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
                   0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F]

    ciphertext = feistel_encrypt_cbc(plaintext, roundKeys, init_vector, sbox)
    decrypted = feistel_decrypt_cbc(ciphertext, roundKeys, init_vector, sbox)

    cipher_img = np.array(ciphertext[:img_array.size], dtype=np.uint8).reshape(img_array.shape)
    decrypted_img = np.array(decrypted[:img_array.size], dtype=np.uint8).reshape(img_array.shape)

    plt.figure(figsize=(15,5))

    plt.subplot(1,3,1)
    plt.title("Original Image")
    plt.imshow(img_array, cmap='gray')
    plt.axis('off')

    plt.subplot(1,3,2)
    plt.title("Encrypted Image")
    plt.imshow(cipher_img, cmap='gray')
    plt.axis('off')

    plt.subplot(1,3,3)
    plt.title("Decrypted Image")
    plt.imshow(decrypted_img, cmap='gray')
    plt.axis('off')

    plt.show()
    # 7. Kiểm tra
    print("PASS" if plaintext == decrypted[:len(plaintext)] else "FAIL")

