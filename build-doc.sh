#!/bin/zsh

swift package --allow-writing-to-directory ./docs generate-documentation --target ReefCalculator --disable-indexing --transform-for-static-hosting --output-path ./docs --hosting-base-path reef-calculator
