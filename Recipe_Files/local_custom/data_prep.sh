#!/bin/bash

. ./cmd.sh
[ -f path.sh ] && . ./path.sh
set -e

AIR_dataset_dir=$1
AIR_recipe_dir=`pwd`

data_dir=data/local/data
dict_dir=data/local/dict

python3 kaldi_files_preparation.py $AIR_dataset_dir $AIR_recipe_dir $data_dir $dict_dir

echo "Data preparation done successfully!!!"