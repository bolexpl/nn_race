#!/bin/bash

dir='data'

fs=$(ls $dir/*.txt)
for f in $fs
do
	./to_csv.awk $f > ${f/.txt/.csv}
    echo "./to_csv.awk $f > ${f/.txt/.csv}"
done

