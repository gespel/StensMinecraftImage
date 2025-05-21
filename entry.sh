#!/bin/bash
set -e

latest_spigot=$(ls -t spigot-*.jar 2>/dev/null | head -n 1)

java -jar $latest_spigot