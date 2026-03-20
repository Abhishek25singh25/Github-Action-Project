#!/bin/bash

echo "Running basic test..."

# Check if app file exists
if [ -f "app.py" ]; then
  echo "app.py exists ✅"
else
  echo "app.py missing ❌"
  exit 1
fi

# Check Flask installed
pip show flask > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "Flask installed ✅"
else
  echo "Flask not installed ❌"
  exit 1
fi

echo "All tests passed ✅"