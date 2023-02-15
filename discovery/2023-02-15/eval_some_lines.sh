#!/usr/bin/env bash

eval_lines() {
  while read -r line; do
    eval "$line"
  done
}

demo_1() {
  bb_script=$(cat <<EOF
(doseq [n (range 5)]
  (println "echo" n))
EOF
           )

  bb -e "$bb_script" | eval_lines
}

eval_some_lines() {
  while read -r line; do
    eval "$line"
  done
}

demo_2() {
  echo 2
}

demo_2
