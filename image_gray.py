from PIL import Image
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# Mở ảnh grayscale 256x256
img = Image.open("./input_image.png").convert("L")  # "L" = grayscale 8-bit

print("original size to check 256x256:", img.size)

# convert to numpy array
arr = np.array(img)

#print("image size (rows x cols):", arr.shape)

# save as csv
pd.DataFrame(arr).to_csv("C/image.csv", index=False, header=False)



# ---------------------------- SHOW IMAGES ---------------------------- #
original = pd.read_csv("C/image.csv", header=None).to_numpy(dtype=np.uint8)
cipher   = pd.read_csv("./outputsFromC/ciphertext.csv", header=None).to_numpy(dtype=np.uint8)
decrypted= pd.read_csv("./outputsFromC/decrypted.csv", header=None).to_numpy(dtype=np.uint8)

# Kiểm tra kích thước
print("Original shape:", original.shape)
print("Cipher shape:", cipher.shape)
print("Decrypted shape:", decrypted.shape)

# Hiển thị ảnh
fig, axes = plt.subplots(1, 3, figsize=(12, 4))

axes[0].imshow(original, cmap='gray', vmin=0, vmax=255)
axes[0].set_title("Original Image")
axes[0].axis('off')

axes[1].imshow(cipher, cmap='gray', vmin=0, vmax=255)
axes[1].set_title("Cipher Image")
axes[1].axis('off')

axes[2].imshow(decrypted, cmap='gray', vmin=0, vmax=255)
axes[2].set_title("Decrypted Image")
axes[2].axis('off')

plt.tight_layout()
plt.show()
