#!/bin/bash

kindle_email="robertu13_fire@kindle.com"

total=`ls *.pdf | wc -l`
counter=1

echo "Total number of PDFs: $total"

for pdf in *.pdf
do
  echo -n "Sending ($counter/$total): $pdf"

  echo | mutt -s "Convert" -a $pdf -- $kindle_email 2>/dev/null

  if [[ $? -ne 0 ]]
  then
    echo " > ERROR!"
  else
    echo " > Done."
  fi
 
  sleep 20

  ((counter++))

done
