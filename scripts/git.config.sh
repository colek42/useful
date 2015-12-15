#!/usr/bin/env bash

git config --global user.email "nkennedy@novetta.com"
git config --global user.name "Nicholas Kennedy"

#10 hour timeout
git config --global credential.helper 'cache --timeout=36000'


