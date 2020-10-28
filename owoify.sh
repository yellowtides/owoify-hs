#!/bin/bash

#build the project
stack build

# take the provided file argument, pipe it to stack
echo $1 | stack exec owoify-hs-exe | tail -n +3 >owoified.txt
