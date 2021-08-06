#!/bin/sh

# Set verbose mode
set -x

# Stop executing after error
set -e 

# Change permissions
chmod -R a+w /github/workspace

# Run command
$*
