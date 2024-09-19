import pandas as pd
import matplotlib.pyplot as plt

# Sample DataFrame based on the structure you provided
data = {
    'icont': [0.0001, 0.0001, 0.0002, 0.0002, 0.0002, 0.0001, 0.0001, 0.0002],
    'frequency': [2993890.0, 3121610.0, 3902940.0, 4179940.0, 3880250.0, 2990410.0, 3232490.0, 3981770.0],
    'vc': [1.24807, 1.24807, 1.56709, 1.56709, 1.56709, 1.24807, 1.24807, 1.56709],
    'vb': [0.501567, 0.501567, 0.401473, 0.401473, 0.401473, 0.501567, 0.501567, 0.401473],
    'mode': ['full-RC', 'C-decoupled', 'C-coupled', 'schematic', 'full-RC', 'C-coupled', 'schematic', 'C-decoupled'],
    'corner': ['tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt', 'tt'],
    'temperature': [27.0] * 8,
    'bias_current': [0.0001, 0.0001, 0.0002, 0.0002, 0.0002, 0.0001, 0.0001, 0.0002]
}

# Load the data into a pandas DataFrame
#df = pd.DataFrame(data)
df = pd.read_csv("vco_characterization.csv")

# Convert frequency to MHz (from Hz)
df['frequency'] = df['frequency'] / 1e6  # Convert Hz to MHz

# Sort by 'temperature' for easier handling
df = df.sort_values(by='temperature')

# Create a color map for 'mode' using a colormap
modes = df['mode'].unique()
cmap = plt.get_cmap('tab10')
color_map = {mode: cmap(i) for i, mode in enumerate(modes)}

# Define line styles for different 'corner' values
corners = df['corner'].unique()
line_styles = {
    'tt': 'solid',
    'ss': 'dashed',
    'sf': 'dotted',
    'fs': 'dashdot',
    'ff': (0, (3, 1, 1, 1))  # custom dashed line
}

# Get unique temperatures and sort them
unique_temperatures = sorted(df['temperature'].unique())

# Number of subplots is equal to the number of unique temperatures
n_temps = len(unique_temperatures)

# Dynamically adjust the vertical size based on the number of subplots (scale 4 units per subplot)
fig_height = 4 * n_temps
fig, axes = plt.subplots(n_temps, 1, figsize=(8, fig_height), sharex=True)

# If there's only one temperature, 'axes' will not be a list, so we ensure it's treated as such
if n_temps == 1:
    axes = [axes]

# Determine global x and y limits for consistency across subplots
x_min = df['bias_current'].min() * 1000
x_max = df['bias_current'].max() * 1000
y_min = df['frequency'].min()
y_max = df['frequency'].max()

# Store the handles and labels for the legend
handles = []
labels = []

# Plot for each temperature in its own subplot
for ax, temp in zip(axes, unique_temperatures):
    temp_df = df[df['temperature'] == temp]
    
    # Group by 'mode' and 'corner' to plot separate curves
    for (mode, corner), group in temp_df.groupby(['mode', 'corner']):
        # Sort the group by 'bias_current'
        group = group.sort_values(by='bias_current')
        
        # Get the color for the current 'mode' and line style for the current 'corner'
        color = color_map[mode]
        linestyle = line_styles[corner]
        
        # Plot with color for 'mode' and line style for 'corner'
        handle, = ax.plot(group['bias_current'] * 1000, group['frequency'], marker='o', linestyle=linestyle, color=color, label=f'{mode}, {corner}')
        
        # Only collect the legend data from the first subplot (uppermost one)
        if ax == axes[0] and (f'{mode}, {corner}') not in labels:
            handles.append(handle)
            labels.append(f'{mode}, {corner}')
    
    # Set title to indicate the temperature
    ax.set_title(f'Temperature: {temp}°C')
    
    # Set consistent limits for x and y axes
    ax.set_xlim([x_min, x_max])
    ax.set_ylim([y_min, y_max])
    
    # Set ylabel for each subplot to indicate MHz
    ax.set_ylabel('Frequency (MHz)')
    
    ax.grid(True)

# Set shared x label
plt.xlabel('Bias Current (mA)')

# Add the legend inside the uppermost subplot, in the center bottom position
legend = axes[0].legend(handles=handles, labels=labels, loc='lower center', bbox_to_anchor=(0.5, 0.02), ncol=len(modes), title='Mode, Corner', frameon=True, facecolor='white', edgecolor='black', fancybox=True)

# Adjust legend transparency via the legend's frame
legend.get_frame().set_alpha(0.7)

# Apply tight layout without rect to avoid extra space above title
plt.tight_layout()

# Show the plot
plt.savefig("vco_characterization.svg")
plt.show()
