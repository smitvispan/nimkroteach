#!/bin/bash
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
if [ -f "$BASE_DIR/api_keys.txt" ]; then
    source "$BASE_DIR/api_keys.txt"
fi
export GOOGLE_KEY1 GOOGLE_KEY2 GOOGLE_KEY3 GOOGLE_KEY4 GEMINI_KEY1 GEMINI_KEY2
exec "$BASE_DIR/venv/bin/python" "$BASE_DIR/app.py"
