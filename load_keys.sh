#!/bin/bash
# Load API keys from saved file
if [ -f /home/deep/nimkroteach/api_keys.txt ]; then
    source /home/deep/nimkroteach/api_keys.txt
fi
export GOOGLE_KEY1 GOOGLE_KEY2 GOOGLE_KEY3 GOOGLE_KEY4 GEMINI_KEY1 GEMINI_KEY2
exec /home/deep/nimkroteach/venv/bin/python /home/deep/nimkroteach/app.py
