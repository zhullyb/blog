#!/bin/bash
echo "======start repo sync======"
repo sync  --force-sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j$(nproc --all)
while [ $? == 1 ]; do
echo "======sync failed, re-sync again======"
sleep 3
repo sync  --force-sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --prune -j$(nproc --all)
done
