#!/usr/bin/env bash
# Checks for broken links in the rendered site.
# Requires the _site directory to exist (run 'quarto render' first).

set -e

# Check if _site directory exists
if [ ! -d "_site" ]; then
  echo "Error: _site directory not found. Please run 'quarto render' first."
  exit 1
fi

echo "Starting HTTP server on port 5528..."
# Start Python HTTP server in the background
python3 -m http.server 5528 --directory _site > /dev/null 2>&1 &
SERVER_PID=$!

# Ensure server is killed on exit
trap "kill $SERVER_PID 2>/dev/null" EXIT

# Give the server time to start
sleep 3

echo "Checking for broken links..."
# Run wget spider to check for broken links
if wget --spider --recursive --no-parent --no-check-certificate http://localhost:5528/ 2>&1; then
  echo ""
  echo "Success: No broken links found!"
  exit 0
else
  echo ""
  echo "Error: Broken links detected!"
  exit 1
fi
