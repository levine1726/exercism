#!/usr/bin/env bash

main () {
  number=$1
  response=""
  
  if [[ $((number % 3)) == "0" ]]; then
    response="${response}Pling"
  fi
  
  if [[ $((number % 5)) == "0" ]]; then
    response="${response}Plang"
  fi

  if [[ $((number % 7)) == 0  ]]; then
    response="${response}Plong"
  fi
  
  echo ${response:-$1}
}

main "$@"
