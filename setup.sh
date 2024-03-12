#!/bin/bash

# Install Oh My Bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Set the theme as a variable
OSH_THEME="modern-t"

# Check if OSH_THEME exists in .bashrc
if grep -q -F 'OSH_THEME' ~/.bashrc; then
    # Replace the existing OSH_THEME line with the new theme
    sed -i "s/OSH_THEME=.*/OSH_THEME=$OSH_THEME/" ~/.bashrc
else
    # Append the new theme to .bashrc
    echo "OSH_THEME=$OSH_THEME" >> ~/.bashrc
fi

# Print a success message
echo "Oh My Bash theme set to $OSH_THEME"
