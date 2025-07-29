#!/bin/bash

src="/home/ubuntu/scripts"
dest="/home/ubuntu/backups_$(date +%Y-%m-%d-%H-%M-%S).tar.gz"

echo "backup started"

tar -czf "$dest" "$src"

echo "Backup done: $dest"

