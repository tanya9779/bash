#!/bin/bash
filename=""
if [ "$#" -ne 2 ] # если не два параметра
then
   echo "Usage: first <old extention> <new extention>"
   exit 1
fi
if ! [ -a "*.$1" ]    # если нет таких файлов
then
    echo "ERROR! File with .$1 extention not found"
    exit 1
fi
for  i in *.$1  # по всем файлам с первым расширением пройдемся
do
    if [ -e "$i" ] # если это файл
    then
        filename=${i%.*}     # это имя файла без расширения
        newfilename=$filename.$2    # это имя файла с новым расширением
        mv $i $newfilename    # переименуем
    fi
done

