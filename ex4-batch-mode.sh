#!/bin/bash

# you can run R in 'batch mode'
/usr/bin/r CMD BATCH ./variables.r /tmp/output.txt
cat /tmp/output.txt
