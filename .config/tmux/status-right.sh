#!/bin/bash
function date_time() {
  printf "CUR %s " "$(date +'%H:%M')"
}

function main() {
  date_time
}

main
