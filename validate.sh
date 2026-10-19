
#!/usr/bin/env bash

set -e

echo "Starting validation..."

if [ ! -f app.txt ]; then
  echo "ERROR: app.txt does not exist"
  exit 1
fi

if ! grep -q "Application is ready" app.txt; then
  echo "ERROR: Application content is invalid"
  exit 1
fi

echo "Validation successful!"
