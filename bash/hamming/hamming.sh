#!/usr/bin/env bash
#
  main () {
    strand1=$1
    strand2=$2

    if [[ $# -ne 2 ]]; then
      echo "Usage: hamming.sh <string1> <string2>"
      exit -1
    fi
    
    if [[ ${#strand1} != ${#strand2} ]]; then
      echo "strands must be of equal length"
      exit -1
    fi

    hamming_difference=0
    
    for (( i=0; i<${#strand1}; i++ )); do
      if [[ "${strand1:$i:1}" != "${strand2:$i:1}"  ]]; then
        ((hamming_difference++))
      fi
    done

    
    echo "$hamming_difference"
  }

  main "$@"
