#!/bin/bash
set -e

PWD=$(basename "$PWD")
ENVIRONMENT="${1:-"anchorage"}"
for file in "custom/links/${ENVIRONMENT}"/.*; do
    if [[ -f $file ]]; then
        filename="$(basename "$file")"
        
        rm -f "$filename"
        ln -s "$file" "$filename" 

        rm -f ../"$filename"
        ln -s "${PWD}/$filename" ../"$filename"
    fi
done

links=".vimrc .tmux.conf .tigrc .oh-my-zsh.rc .profiling bin utils" 
for link in $links; do
    rm -f ../"$link"
    ln -s "${PWD}/$link" ../"$link"
done

pushd utils && \
    ./install.sh && \
popd
