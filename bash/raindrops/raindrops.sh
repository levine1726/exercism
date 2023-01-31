#!/usr/bin/env bash

main () {
  let number="$1"
  response=""
  
  if [[ $(expr $number % 3) == "0" ]]; then
    response="${response}Pling"
  fi
  
  if [[ $(expr $number % 5) == "0" ]]; then
    response="${response}Plang"
  fi

  if [[ $(expr $number % 7) == 0  ]]; then
    response="${response}Plong"
  fi

  if [[ -z "$response" ]]; then
    response=$number
  fi
  
  echo "$response"
}

main "$@"
