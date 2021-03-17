#!/bin/bash
MSG_FILE=$1
FILE_CONTENT="$(cat $MSG_FILE)"

# Initialize constants here
export REGEX='^(\[US[0-9]+\]) .+'
export ERROR_MSG="Invalid commit message: \"$FILE_CONTENT\""

if [[ $FILE_CONTENT =~ $REGEX ]]; then
  echo "Good commit!"
else
  echo "Bad commit \"$FILE_CONTENT\""
  echo $ERROR_MSG
  exit 1
fi

exit 0