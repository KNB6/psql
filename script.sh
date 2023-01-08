#!/bin/bash

while true; do

for file in /home/bsm/test/*; do

dosyaadi=$(basename "$file")
tarih=$(date -r "$file" +"%Y-%m-%d %T")
boyut=$(stat -c%s "$file")

psql test -c "INSERT INTO tablo (tarih, dosyaadi, boyut) VALUES ('$tarih', '$dosyaadi', '$boyut')"
done

sleep 15
done

