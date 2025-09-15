from PRNG import chaotic_PRNG
import numpy as np

# Trích chữ số thập phân
def extract_digits(x, pos=[3,4,5]):
    s = f"{x:.10f}".replace("0.","")  # lấy 10 chữ số thập phân
    digits = "".join(s[p-1] for p in pos)  # pos tính từ 1
    return int(digits)

# Hàm nghịch đảo trong GF(2^8) với đa thức AES (0x11B)
def gf_inverse(x):
    if x == 0:
        return 0
    a, m = x, 0x11B
    u, v = 1, 0
    while a > 1:
        shift = a.bit_length() - m.bit_length()
        if shift >= 0:
            a ^= m << shift
            u ^= v << shift
        else:
            a, m = m, a
            u, v = v, u
    return u & 0xFF

# Tạo S-Box (256 phần tử)
def build_sbox(seq, needed=256):
    sbox = []
    seen = set()
    for (x1, x2, x3) in seq:
        D1 = extract_digits(x1)
        D2 = extract_digits(x2)
        D3 = extract_digits(x3)
        M1, M2, M3 = D1 % 256, D2 % 256, D3 % 256
        V = gf_inverse(M1 ^ M2 ^ M3)
        if V not in seen:
            seen.add(V)
            sbox.append(V)
        if len(sbox) == needed:
            break
    return sbox

# Lưu S-Box ra CSV
def save_sbox_csv(sbox, path="sbox_from_algorithm.csv"):
    mat = np.array(sbox).reshape(16,16)
    with open(path, "w", newline="") as f:
        writer = csv.writer(f)
        for row in mat:
            writer.writerow(row)
    return path

# In S-Box 16x16
def print_sbox(sbox):
    print("S-BOX (16x16):")
    for i in range(16):
        row = []
        for j in range(16):
            idx = 16*i + j
            if idx < len(sbox):
                row.append(f"{sbox[idx]:02X}")
            else:
                row.append("..")  
        print(" ".join(row))

# Sinh key từ S-Box
def sbox_to_key(sbox, key_size=16):
    key_bytes = bytes(sbox[:key_size])
    return key_bytes

