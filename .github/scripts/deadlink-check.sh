#!/usr/bin/env bash
# Checks for broken links in the rendered site.
# Requires the _site directory to exist (run 'quarto render' first).
# Compatible with macOS, Linux, and Windows (Git Bash/WSL).

set -e

# Detect OS
OS="$(uname -s)"
case "${OS}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*|MINGW*|MSYS*)    MACHINE=Windows;;
    *)          MACHINE="UNKNOWN:${OS}"
esac

echo "Detected OS: ${MACHINE}"

# Check for required tools
echo "Checking for required tools..."

# Check for Python (try python3 first, then python)
PYTHON_CMD=""
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
    echo "✓ Found python3: $(command -v python3)"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
    echo "✓ Found python: $(command -v python)"
else
    echo "Error: Python is not installed or not in PATH."
    echo "Please install Python 3 from https://www.python.org/"
    exit 1
fi

# Check for wget
if ! command -v wget &> /dev/null; then
    echo "Error: wget is not installed or not in PATH."
    case "${MACHINE}" in
        Mac)
            echo "Please install wget using: brew install wget"
            ;;
        Linux)
            echo "Please install wget using your package manager (e.g., apt-get install wget, yum install wget)"
            ;;
        Windows)
            echo "Please install wget from https://eternallybored.org/misc/wget/ or use WSL"
            ;;
    esac
    exit 1
fi
echo "✓ Found wget: $(command -v wget)"

# Check if _site directory exists
if [ ! -d "_site" ]; then
  echo "Error: _site directory not found. Please run 'quarto render' first."
  exit 1
fi
echo "✓ Found _site directory"

echo ""
echo "Starting HTTP server on port 5528..."
# Start Python HTTP server in the background
$PYTHON_CMD -m http.server 5528 --directory _site > /dev/null 2>&1 &
SERVER_PID=$!

# Ensure server is killed on exit
trap "kill $SERVER_PID 2>/dev/null || true" EXIT

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
