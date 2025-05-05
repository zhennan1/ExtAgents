#!/bin/bash

default_target_dir=/mnt/workspace/wzn/ExtAgents/results_zh

if [ $# -ge 1 ]; then
    target_dir=$1
else
    target_dir=$default_target_dir
fi

python src/eval/compute_scores.py --task longbook_qa_chn --preds_path ${target_dir}/final_preds.jsonl
