#!/bin/sh -x

COMP="--file=PWC2019-1"

fs-filter "$COMP"
fs-route "$COMP"
fs-effort "$COMP"
fs-score "$COMP"

extract-input "$COMP" --give-fraction=0.001 --haversines
task-length "$COMP"
cross-zone "$COMP"
tag-zone "$COMP"
unpack-track "$COMP"
peg-frame "$COMP"
align-time "$COMP"
discard-further "$COMP"
area-step "$COMP"
mask-track "$COMP"
land-out "$COMP"
gap-point "$COMP"

comp-serve "$COMP"
