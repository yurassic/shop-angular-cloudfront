#!/bin/bash

# Run linting tool
npm run lint

# Run unit tests
npm run test

# Check for vulnerabilities with npm audit
npm audit

# Build project
./build-client.sh

# If any of the previous commands returned a non-zero exit code, report an error
if [ $? -ne 0 ]; then
  echo "The client app has problems with its quality."
  exit 1
fi

# If all commands completed successfully, report success
echo "The client app passed all quality checks."
