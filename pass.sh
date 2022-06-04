#!/bin/bash

case $1 in
1)
  name=$(bw list items | jq '.[] | select (.type == 1) | .name' | fzf -e)
  ;;
2)
  name=$(bw list items | jq '.[] | select (.type == 2) | .name' | fzf -e)
  ;;
*)
  echo "Invalid argument."
  exit
esac

name=$(sed -e 's/^"//' -e 's/"$//' <<< "$name")

case $1 in
1) # password
  bw get password "${name}" | wl-copy --paste-once
  ;;
2) # notes
  bw get notes "${name}" | wl-copy --paste-once
  ;;
esac

if [ $? == 0 ]
  then
    echo "Sucessful to get password/note for ${name}"
  else
    echo "Failed!"
fi

