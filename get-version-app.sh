#!/bin/bash

while sleep 0.1; do
    curl -s "mylocalapp.com" | grep -o 'Hello, World! This is version v[0-9]*'
done