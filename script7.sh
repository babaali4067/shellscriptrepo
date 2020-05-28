#!/bin/bash
echo "Creating 2 files";
touch file1 file2;
chmod 666 file1;
chmod 111 file2;
echo "Creating Directory with default permissions";
mkdir dir1;

if [ -e $file1 ] 
then 
    echo File with name file1 Exist 
else
    echo File with name file1 doesnot exist 
fi 

if [ -e $file2 ] 
then 
    echo File with name file2 Exist 
else
    echo File with name file2 doesnot exist 
fi

mv /root/Desktop/file1 /root/Desktop/dir1;
mv /root/Desktop/file2 /root/Desktop/dir1;

ls -l /root/Desktop/dir1/file1;
ls -l /root/Desktop/dir1/file2;
