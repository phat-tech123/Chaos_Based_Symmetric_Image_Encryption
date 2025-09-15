import numpy as np
import itertools
from collections import Counter
from s_box_generation.py import  

# Tạo S-box từ bảng hex (16x16)

sbox_matrix_raw = [
    [0xE1,0x6A,0x41,0x95,0x3D,0xC1,0x5D,0x23,0x0A,0x09,0xD7,0x59,0xF8,0xFB,0x30,0x78],
    [0x48,0x27,0x50,0xA4,0x4C,0x87,0xF7,0x32,0xE9,0x37,0x0C,0xAB,0x76,0xEA,0x9B,0x10],
    [0x02,0xC2,0x1E,0x4E,0x60,0x75,0x14,0xDC,0xF4,0xFE,0xD2,0x70,0x71,0xF5,0x73,0x57],
    [0x40,0xCC,0x39,0x74,0xC6,0xD1,0x0F,0xF6,0x28,0x1F,0x20,0xD4,0xB8,0x45,0x43,0xB0],
    [0xC5,0x4B,0x91,0x04,0x31,0x9F,0x96,0x81,0xC9,0x63,0x5A,0x12,0xF9,0x89,0x77,0x0B],
    [0x64,0xA2,0x2B,0xF1,0x99,0x7C,0x6D,0xFA,0x7F,0x4A,0x34,0x5C,0xEB,0x1A,0x8D,0x92],
    [0x61,0x90,0xD9,0xB2,0x56,0x18,0x53,0x46,0xA9,0xB5,0xAD,0x1B,0x16,0xE8,0x3F,0xA8],
    [0x65,0x9D,0x6C,0x08,0x83,0xB1,0xA7,0xE6,0x67,0x44,0xE4,0x5B,0x7A,0x9E,0xA5,0x6B],
    [0x69,0x8E,0x66,0x42,0xED,0xE2,0xB7,0x2F,0xDB,0x82,0xE5,0x6E,0x3E,0x22,0x84,0xBA],
    [0xD8,0x01,0x58,0xE7,0x88,0xB4,0x94,0x15,0xDA,0xA1,0xC0,0x25,0xF3,0x7E,0x19,0xAF],
    [0x3C,0xCA,0xBC,0x38,0x03,0x62,0x55,0x8C,0x86,0x07,0x26,0x5F,0x2E,0xB3,0x49,0x24],
    [0x0E,0xF2,0x4D,0x1C,0x52,0x2C,0x05,0xEC,0x7B,0xB9,0xFC,0x8F,0xC3,0xDF,0x85,0xAC],
    [0x72,0x4F,0xEF,0xE3,0xA6,0xFD,0xDD,0x2A,0xCE,0x9A,0x3A,0xE0,0x97,0xA0,0x06,0x54],
    [0xC8,0x00,0xDE,0xCB,0x93,0x13,0xA3,0x11,0x98,0xD0,0x3B,0x8B,0x80,0xC4,0x47,0xC7],
    [0x21,0x35,0xBF,0x1D,0x17,0xF0,0x9C,0xCF,0x36,0xEE,0xD3,0x2D,0x5E,0x29,0xB6,0x33],
    [0xAA,0xCD,0x51,0x79,0xD5,0xBE,0xFF,0xAE,0xD6,0x7D,0x68,0x6F,0xBD,0x8A,0x0D,0xBB],
]
sbox_matrix = list(map(list, zip(*sbox_matrix_raw)))

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

# Bijectivity
def check_bijectivity(sbox):
    return len(set(sbox)) == len(sbox)

# Walsh spectrum
def walsh_spectrum(f):
    n = len(f).bit_length() - 1
    W = []
    for i in range(1 << n):
        total = 0
        for j in range(1 << n):
            dot = bin(i & j).count("1") % 2
            total += (-1) ** (f[j] ^ dot)
        W.append(total)
    return np.array(W)

# Nonlinearity
def nonlinearity(sbox):
    n = 8   # 8-bit S-box
    NLs = []
    for bit in range(n):
        f = [(y >> bit) & 1 for y in sbox]  
        W = walsh_spectrum(f)
        NL = (1 << (n - 1)) - (np.max(np.abs(W)) // 2)
        NLs.append(int(NL))  
    return NLs

# SAC
def sac(sbox):
    n = 8
    counts = np.zeros((n, n), dtype=int)
    total = 1 << n  # 256

    for i in range(n):  
        mask = 1 << i
        for x in range(total):
            diff = sbox[x] ^ sbox[x ^ mask]
            for j in range(n):  
                counts[i, j] += (diff >> j) & 1

    sac_full = counts / float(total)
    return sac_full

# --- BIC-SAC ---
def bic_sac(sbox):
    n = 8
    total = 1 << n
    values = []

    for i in range(n):  
        mask = 1 << i
        for x in range(total):
            y1 = sbox[x]
            y2 = sbox[x ^ mask]
            diff = y1 ^ y2
            bits = [(diff >> j) & 1 for j in range(n)]

            # so sánh cặp bit output
            for j1 in range(n):
                for j2 in range(j1 + 1, n):
                    values.append(bits[j1] ^ bits[j2])

    avg = sum(values) / len(values)
    return avg

# --- BIC-Nonlinearity ---
def bic_nonlinearity(sbox):
    n = 8
    results = []

    for b1 in range(n):
        for b2 in range(b1 + 1, n):
            f = [((y >> b1) & 1) ^ ((y >> b2) & 1) for y in sbox]
            W = walsh_spectrum(f)
            NL = (1 << (n - 1)) - (np.max(np.abs(W)) // 2)
            results.append(NL)

    return sum(results) / len(results)

if __name__ == "__main__":
    sbox = [val for row in sbox_matrix for val in row]

    # check duplicates
    cnt = Counter(sbox)
    dupes = [val for val, c in cnt.items() if c > 1]
    print("Số phần tử trùng:", len(dupes))

    print("\n                   EVALUATION                         \n")

    # Bijectivity
    print("======================= bijectivity ========================")
    print("Bijectivity:", check_bijectivity(sbox))
    print("======================= bijectivity ========================\n")

    # Nonlinearity
    print("======================= nonlinearity =======================")
    NLs = nonlinearity(sbox)
    print("Nonlinearity per output bit:", NLs)
    print("  Min =", min(NLs), "Max =", max(NLs), "Avg =", sum(NLs)/len(NLs))
    print("======================= nonlinearity =======================\n")

    # SAC
    print("=========================== SAC ===========================")
    sac_full = sac(sbox)
    print("SAC max, min, average: {:.4f} {:.4f} {:.4f}".format(
        np.max(sac_full), np.min(sac_full), np.mean(sac_full)
    ))
    print("SAC matrix (rounded):")
    print(np.round(sac_full, 4))
    print("=========================== SAC ===========================\n\n")

    # BIC
    print("=========================== BIC-SAC ===========================")
    avg = bic_sac(sbox)
    print("BIC-SAC: Avg={:.4f}".format(avg))

    print("======================= BIC-Nonlinearity ======================")
    avg = bic_nonlinearity(sbox)
    print("BIC-Nonlinearity: Avg={:.2f}".format(avg))
