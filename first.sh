#!/bin/bash
filename=""
if [ "$#" -ne 2 ] # ���� �� ��� ���������
then
   echo "Usage: first <old extention> <new extention>"
   exit 1
fi
if ! [ -a "*.$1" ]    # ���� ��� ����� ������
then
    echo "ERROR! File with .$1 extention not found"
    exit 1
fi
for  i in *.$1  # �� ���� ������ � ������ ����������� ���������
do
    if [ -e "$i" ] # ���� ��� ����
    then
        filename=${i%.*}     # ��� ��� ����� ��� ����������
        newfilename=$filename.$2    # ��� ��� ����� � ����� �����������
        mv $i $newfilename    # �����������
    fi
done

