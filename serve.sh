#!/bin/bash

# Simple script to serve the food website locally
echo "🍔 Starting Food Website Server..."
echo "📱 Open your browser and go to: http://localhost:8000"
echo "🛑 Press Ctrl+C to stop the server"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
else
    echo "❌ Python not found. Please install Python to serve the website."
    exit 1
fi
