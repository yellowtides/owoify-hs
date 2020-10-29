#!/bin/bash

#build the project
stack build

# take the provided file argument, pipe it to stack
stack exec owoify-hs-exe <$1 >owoified.txt
