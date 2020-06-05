#!/bin/bash -x

declare -A colour

colour[apple]="yello"
colour[grapes]="green"
colour[mango]="red"

echo "${colour[@]}"
echo "${!colour[@]}"
