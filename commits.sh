#!/bin/bash

func-commit(){
  ##Aqui.
  caminhoDir="/home/pedro/workspace/Verdinho"
  ##Aqui.
  meuUser="pedro"
  meses=(Empty JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC)

  for i in $(seq 1 12);
  do 
    if [ "${meses[$i]}" = "JAN" ] || [ "${meses[$i]}" = "MAR" ] || [ "${meses[$i]}" = "MAY" ] || [ "${meses[$i]}" = "JUL" ] || [ "${meses[$i]}" = "AUG" ] || [ "${meses[$i]}" = "OCT" ] || [ "${meses[$i]}" = "DEC" ]
    then
      for j in $(seq 1 31)
      do
      sudo date -s "${meses[$i]} $j"

      mkdir -p $caminhoDir/commits/evento-$j-$i
      echo "https://github.com/Pedrobolfute/verdinho $j / $i / 2023" >> $caminhoDir/commits/evento-$j-$i/arquivo$j

      cd $caminhoDir
      git add .
      git commit -m "$j ${meses[$i]}"
      done
    elif [ "${meses[$i]}" = "APR" ] || [ "${meses[$i]}" = "JUN" ] || [ "${meses[$i]}" = "SEP" ] || [ "${meses[$i]}" = "NOV" ]
    then
      for j in $(seq 1 30)
      do
      sudo date -s "${meses[$i]} $j"

      mkdir -p $caminhoDir/commits/evento-$j-$i
      echo "https://github.com/Pedrobolfute/verdinho $j / $i / 2023" >> $caminhoDir/commits/evento-$j-$i/arquivo$j

      cd $caminhoDir 
      git add .
      git commit -m "$j ${meses[$i]}"
      done
    elif [ "${meses[$i]}" = "FEB" ]
    then
      for j in $(seq 1 28)
      do
      sudo date -s "${meses[$i]} $j"

      mkdir -p $caminhoDir/commits/evento-$j-$i
      echo "https://github.com/Pedrobolfute/verdinho $j / $i / 2023" >> $caminhoDir/commits/evento-$j-$i/arquivo$j

      cd $caminhoDir 
      git add .
      git commit -m "$j ${meses[$i]}"
      done
    else
    echo "Error dentro do IF!"
    fi
  done

  ##Aqui.
  date -s "feb 19 15:47"
  chown -R $meuUser:$meuUser $caminhoDir
}

func-commit >> logCommits.txt