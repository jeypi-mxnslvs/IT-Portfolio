#!/bin/bash
echo "=== Starting Arch Linux Update ==="
echo "Started at: $(date)"
echo ""

# Update packages
echo "Updating system packages..."
sudo pacman -Syu --no-confirm

echo "Cleaning up package cache..."
sudo pacman -Sc --no-confirm

echo ""
echo "=== System update completed ==="
