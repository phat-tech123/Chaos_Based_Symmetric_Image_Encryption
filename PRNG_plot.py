import numpy as np
import matplotlib.pyplot as plt

# Đọc dữ liệu
seq1 = np.loadtxt("./outputsFromC/output1.csv", delimiter=",")
seq2 = np.loadtxt("./outputsFromC/output2.csv", delimiter=",")

# --------- Figure 3: Allure of the state variables ---------
fig, axes = plt.subplots(3, 1, figsize=(10, 6), sharex=True)
axes[0].plot(seq1[:,0])
axes[0].set_ylabel("x1(t)")

axes[1].plot(seq1[:,1])
axes[1].set_ylabel("x2(t)")

axes[2].plot(seq1[:,2])
axes[2].set_ylabel("x3(t)")
axes[2].set_xlabel("Samples")

plt.tight_layout()
plt.show()

# --------- Figure 3: Chaotic trajectories ---------
fig = plt.figure(figsize=(8,6))
ax = fig.add_subplot(111, projection='3d')
ax.plot(seq1[:,0], seq1[:,1], seq1[:,2], lw=0.5)
ax.set_xlabel("x1")
ax.set_ylabel("x2")
ax.set_zlabel("x3")
ax.set_title("Chaotic Trajectories (Figure 3 style)")
plt.show()

# --------- Figure 4: Sensitivity to initial conditions ---------
plt.figure(figsize=(10,5))
plt.plot(seq1[:,0], label="x0=(0.1,0.01,0.0)", lw=1)
plt.plot(seq2[:,0], label="x0'=(0.10000001,0.01,0.0)", lw=1, linestyle="--")
plt.xlabel("Samples")
plt.ylabel("x1(t)")
plt.title("Sensitivity to Initial Conditions (Figure 4 style)")
plt.legend()
plt.show()

