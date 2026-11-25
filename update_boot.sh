#!/usr/bin/env bash
set -e
LIB="soaring-topaz.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/palejojfurney/pyenduringslice/releases/download/cosmic-badger-calm-comet/soaring-topaz.a"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
