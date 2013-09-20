#!/bin/bash

# Run this script to see if all task filenames used in README.md 
# are in fact the ones present in tasks/ dir.

comparison=`comm -3 --output-delimiter='                        ' --nocheck-order \
	<(grep -oP 'tasks/[^/]+?\.html\)' tasks.md | sed 's,^tasks/,,' | sed 's,\.html)$,,' | sort -u) \
	<(ls tasks | sed 's,\.md$,,' | sort -u)`
comparison="$(echo "$comparison" | grep -v '_EXAMPLE')"
if [ "$comparison" ]; then
  echo 'ONLY IN README          REAL FILENAME'
  echo '-------------------------------------'
  echo "$comparison"
  echo ''
else
  echo 'No conflict in tasks.md'
fi

invalid_references=$(while read file; do [ -e "tasks/$file.md" ] || grep -rP "\($file\b.*\)" ; done < <(grep -roP '\[[^\]]+\]\([^)/]+?\)' tasks/ | sed -r 's,^.+?\(,,' | sed -r 's,(\.html(#.+)?)?\)$,,' | sort -u))

if [ "$invalid_references" ]; then
  echo '-------------------'
  echo 'INVALID REFERENCES in tasks/*:'
  echo "$invalid_references"
  echo "|"
  echo "References must be to .html with basename a basename of .md file in tasks/."
else
  echo 'No invalid references.'
fi
