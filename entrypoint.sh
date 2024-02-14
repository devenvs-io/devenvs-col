#!/bin/sh -l

echo "Hello $1 $2 $3 $4 $5 $6 $7 $8"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

