#!/bin/bash
set -e

# Verify Python and SSL are working
python --version
python -c "import ssl; print('SSL is available')"

# Upgrade pip
pip install --upgrade pip

# Install Snowflake packages
pip install snowflake-snowpark-python snowflake.core

# Install Snowflake CLI using pipx
pipx install snowflake-cli

echo "✓ All dependencies installed successfully"
