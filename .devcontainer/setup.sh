#!/usr/bin/env bash
set -e

# Extract netmaster.zip if the backend directory does not exist. This allows
# the devcontainer to work even when the repository only contains the zipped
# NetMaster+ project. The unzip command will overwrite existing files as needed.
if [ ! -d backend ]; then
  echo "Extracting netmaster.zip..."
  unzip -o netmaster.zip -d .
fi

echo "👉 Installing backend deps..."
cd backend
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "👉 Installing frontend deps..."
cd ../frontend
npm install

echo "✅ Setup done."
