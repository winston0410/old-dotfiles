#!/bin/bash
function date_time() {
  printf "UK=%s " "$(date +'%H:%M')"
}

function main() {
  date_time
}

main
