# PLOT SPECTRA BEFORE & AFTER COSMIC RAYS REMOVAL (CHECK THAY ARE SEPARATED NOT A UNIQUE DATABASE)

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Create a figure & axis for plot
fig, ax = plt.subplots(2, 1, figsize=(10, 6))

# Plot original data
ax[0].plot(data[wave_column], data[intensity_column], label='Original Data', color='b')

# Plot data after cosmic ray removal
ax[1].plot(data[wave_column], data[intensity_column], label='Original Data', color='b')

# Highlight cosmic ray points in red
for index in cosmic_ray_indices:
    ax[1].scatter(data.at[index, wave_column], data.at[index, intensity_column], color='r', marker='x', label='Cosmic Ray')

# Set plot titles & labels
ax[0].set_title('Original Data')
ax[0].set_xlabel('Wavelength')
ax[0].set_ylabel('Intensity')
ax[0].legend()

ax[1].set_title('Data After Cosmic Ray Removal')
ax[1].set_xlabel('Wavelength')
ax[1].set_ylabel('Intensity')
ax[1].legend()

# Show plots
plt.tight_layout()
plt.show()
