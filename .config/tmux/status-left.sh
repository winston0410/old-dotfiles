#!/bin/bash
function date_time() {
  printf "HK %s " "$(date -v +8H +'%H:%M')"
}

function main() {
  date_time
}

main
