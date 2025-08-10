#!/usr/bin/env bash
set -e

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
