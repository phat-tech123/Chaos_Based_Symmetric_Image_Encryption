from s_box_generation import build_sbox
from s_box_generation import print_sbox
from PRNG import chaotic_PRNG
import numpy as np
import itertools
from collections import Counter

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
    A = np.array([[0.0, 1/2, 1/20],
                  [1/3, 0.0, 1/3],
                  [1/20, 1/2, 0.0]], dtype=float)

    seq = chaotic_PRNG(A, 2100, 150)
    sbox = build_sbox(seq)
    print_sbox(sbox)
    # check duplicates
    cnt = Counter(sbox)
    dupes = [val for val, c in cnt.items() if c > 1]
    print("\nthe number of duplicate element:", len(dupes))

    print("\n                      EVALUATION                           \n")

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
    print("SAC matrix:")
    print(np.round(sac_full, 4))
    print("=========================== SAC ===========================\n\n")

    # BIC
    print("=========================== BIC-SAC ===========================")
    avg = bic_sac(sbox)
    print("BIC-SAC: Avg={:.4f}".format(avg))

    print("======================= BIC-Nonlinearity ======================")
    avg = bic_nonlinearity(sbox)
    print("BIC-Nonlinearity: Avg={:.2f}".format(avg))
