#!/usr/bin/env bash
set -e
# Start backend
cd /workspaces/netmaster-plus/backend
source .venv/bin/activate
PORT=8000 uvicorn main:app --host 0.0.0.0 --port 8000 &
# Start frontend
cd /workspaces/netmaster-plus/frontend
npm run dev -- --port 3000 --hostname 0.0.0.0
