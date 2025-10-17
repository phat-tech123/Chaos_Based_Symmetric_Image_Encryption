import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D


# sawtooth function
def phi_eps(x, eps=0.05):
    l = np.floor((x / eps + 1) / 2).astype(int)
    return ((-1.0) ** l) * (x - 2.0 * l * eps)

# Pseudo Random Number Generator
# A:        Stable Schur matrix
# sample:   The number of sample we need for generating S-box
# x0:       Initial vector of state variables
# N :       The first N iterations to avoid the transient state
def chaotic_PRNG(A, sample=2000, N = 100, eps=0.05, x0=(0.1, 0.01, 0.0)):
    # Eigenvalues & spectral radius
    eigenvalues = np.linalg.eigvals(A)
    spectral_radius = max(abs(eigenvalues))
    
    # inf norm
    row_sums = np.sum(np.abs(A), axis=1)
    norm_inf_manual = np.max(row_sums)

    # sigma + err
    err = 0.1
    sigma = max(3*norm_inf_manual, np.sqrt(norm_inf_manual+1.0)+1.0) + err

    # init 
    x = np.array(x0, dtype=float)
    seq = []

    for i in range(N + sample):
        U = np.array([
            phi_eps(sigma * x[0], eps),
            phi_eps(sigma * x[1], eps),
            phi_eps(sigma * x[2], eps)
        ])
        x_next = A @ x + U
        x = x_next

        if i >= N:
            seq.append(x.copy())

    return np.array(seq)

# -------------------------------
if __name__ == "__main__":
    A = np.array([[0.0, 1/2, 1/20],
                  [1/3, 0.0, 1/3],
                  [1/20, 1/2, 0.0]], dtype=float)

    seq = chaotic_PRNG(A)

# --------- Figure 3: Allure of the state variables of the proposed chaotic system ---------
    fig, axes = plt.subplots(3, 1, figsize=(10, 6), sharex=True)
    axes[0].plot(seq[:,0])
    axes[0].set_ylabel("x1(t)")

    axes[1].plot(seq[:,1])
    axes[1].set_ylabel("x2(t)")

    axes[2].plot(seq[:,2])
    axes[2].set_ylabel("x3(t)")
    axes[2].set_xlabel("Samples")



# --------- Figure 3: Chaotic trajectories ---------
    fig = plt.figure(figsize=(8,6))
    ax = fig.add_subplot(111, projection='3d')
    ax.plot(seq[:,0], seq[:,1], seq[:,2], lw=0.5)
    ax.set_xlabel("x1")
    ax.set_ylabel("x2")
    ax.set_zlabel("x3")
    ax.set_title("Chaotic Trajectories (Figure 3 style)")
    plt.show()

# --------- Figure 4: Sensitivity to initial conditions ---------
    seq1 = chaotic_PRNG(A, sample=100, eps=0.05, x0=(0.1, 0.01, 0.0))
    seq2 = chaotic_PRNG(A, sample=100, eps=0.05, x0=(0.10000001, 0.01, 0.0))

    plt.figure(figsize=(10,5))
    plt.plot(seq1[:,0], label="x0=(0.1,0.01,0.0)", lw=1)
    plt.plot(seq2[:,0], label="x0'=(0.10000001,0.01,0.0)", lw=1, linestyle="--")
    plt.xlabel("Samples")
    plt.ylabel("x1(t)")
    plt.title("Sensitivity to Initial Conditions (Figure 4 style)")
    plt.legend()
    plt.show()
