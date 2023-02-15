#!/usr/bin/env bash

eval_lines() {
    # run a subcommand, eval each line in the current process
    # take each line from this function's stdin
    while read -r line; do
        eval "$line"
    done
}

eval_lines <<EOF
echo a line
echo another
EOF
