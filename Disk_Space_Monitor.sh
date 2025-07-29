#!/bin/bash

disk_usage=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$disk_usage" -gt 80 ]; then
  echo "⚠️ Disk usage is above 80%: ${disk_usage}%"
else
  echo "✅ Disk usage is normal: ${disk_usage}%"
fi

