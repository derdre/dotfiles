#!/bin/bash
# script to get dot files into git folder

# cd into folder of this script
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

# config folder
dot_config=.config

# source folder names
source folders.sh

# if not already created make a folder
if [[ ! -e $dot_config ]]; then
    echo "Creating $dot_config ..."
    mkdir $dot_config
else
    echo "Backing up $dot_config ..."
    cp -Rf "$dot_config" "${dot_config}_$(date +%Y%m%d%H%M%S)"
    rm -Rf "$dot_config"/*
fi

for i in "${folder_names[@]}"; do
  echo "Copy ${i} ..."

  cp -r ~/"${dot_config}"/"${i}" "${dot_config}"

done

