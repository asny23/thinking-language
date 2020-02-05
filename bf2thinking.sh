#!/bin/sh

if [ ! -f $1 ]; then
  echo "file $1 not found"
  exit 1
fi

TMP=$(cat $1 | sed -e 's|\>|🤔🤔🤔/|g')
TMP=$(echo $TMP | sed -e 's|\<|🤔🤔🤔🤔/|g')
TMP=$(echo $TMP | sed -e 's|\+|🤔/|g')
TMP=$(echo $TMP | sed -e 's|\-|🤔🤔/|g')
TMP=$(echo $TMP | sed -e 's|\.|🤔🤔🤔🤔🤔/|g')
TMP=$(echo $TMP | sed -e 's|\,|🤔🤔🤔🤔🤔🤔/|g')
TMP=$(echo $TMP | sed -e 's|\[|🤔🤔🤔🤔🤔🤔🤔/|g')
TMP=$(echo $TMP | sed -e 's|\]|🤔🤔🤔🤔🤔🤔🤔🤔/|g')
echo $TMP | tr '/' '\n'