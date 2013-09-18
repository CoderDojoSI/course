#!/bin/bash

# Run this script to see if all task filenames used in README.md 
# are in fact the ones present in tasks/ dir.

comparison=`comm -3 --output-delimiter='                        ' --nocheck-order \
	<(grep -oP '/[^/]+?\.md\)' README.md | sed 's,^/,,' | sed 's,)$,,' | sort -u) \
	<(ls tasks)`
if [ "$comparison" ]; then
  echo 'ONLY IN README          REAL FILENAME'
  echo '-------------------------------------'
  echo "$comparison"
  echo ''
else
  echo 'No conflict in README.md'
fi

invalid_references=$(while read file; do [ -e "tasks/$file" ] || grep -roP "\($file\)" | tr '()' ' ' ; done < <(grep -roP '\([^)]+?\.md\)' tasks | sed -r 's,^.+?\(,,' | sed 's,)$,,' | sort -u))

if [ "$invalid_references" ]; then
  echo '-------------------'
  echo 'INVALID REFERENCES:'
  echo "$invalid_references"
else
  echo 'No invalid references.'
fi
