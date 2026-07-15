#!/bin/bash
echo "=== Starting Arch Linux Update ==="
echo "Started at: $(date)"
echo ""

# Update all packages
echo "Upgrading system packages..."
sudo pacman -Syu --noconfirm

# Clean up old packages to save disk space
echo "Cleaning up package cache..."
sudo pacman -Sc --noconfirm

echo ""
echo "=== System update completed successfully! ==="
