#!/bin/bash

meses=(EMPTY JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC)

for i in $(seq 12);
do 
  if [ "${meses[$i]}" = "JAN" ] || [ "${meses[$i]}" = "MAR" ] || [ "${meses[$i]}" = "MAY" ] || [ "${meses[$i]}" = "JUL" ] || [ "${meses[$i]}" = "AUG" ] || [ "${meses[$i]}" = "OCT" ] || [ "${meses[$i]}" = "DEC" ]
  then
    for j in $(seq 31)
    do
    sudo date -s "${meses[$i]} $j"
    
    mkdir -p evento/evento-$j-$i
    echo "Pedrobolfute $j / $i / 2023" >> evento/evento-$j-$i/arquivo$j
     
    git add .
    git commit -m "$j ${meses[$i]}"
    git push origin main
    done
  elif [ "${meses[$i]}" = "APR" ] || [ "${meses[$i]}" = "JUN" ] || [ "${meses[$i]}" = "SEP" ] [ "${meses[$i]}" = "NOV" ]
  then
    for j in $(seq 30)
    do
    sudo date -s "${meses[$i]} $j"
    
    mkdir -p evento/evento-$j-$i
    echo "Pedrobolfute $j / $i / 2023" >> evento/evento-$j-$i/arquivo$j
    
    git add .
    git commit -m "$j ${meses[$i]}"
    git push origin main
    done
  elif [ "${meses[$i]}" = "FEV" ]
  then
    for j in $(seq 28)
    do
    sudo date -s "${meses[$i]} $j"
    
    mkdir -p evento/evento-$j-$i
    echo "Pedrobolfute $j / $i / 2023" >> evento/evento-$j-$i/arquivo$j
    
    git add .
    git commit -m "$j ${meses[$i]}"
    git push origin main
    done
  else
  echo "Error dentro do IF!"
  fi
done