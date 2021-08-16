#!/bin/sh

# Set verbose mode
set -x

# Stop executing after error
set -e 

# Change permissions
chmod -R a+w /github/workspace

# Use working directory
cd /github/workspace

# Run command
$*
