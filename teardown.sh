#!/usr/local/bin/bash

NAME=talk-to-me

[[ -z "$NAME" ]] && echo 'var NAME cannot be empty, exiting...' && exit 1
az group delete --name "$NAME" -y
