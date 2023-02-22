#!/bin/bash
echo "#############################################Welcome to my first script file#############################################################"
#!/bin/bash
a=1
b="/tmp/dir"
while [[ $a -lt 4 ]];do
    mkdir -p ${b}${a}
    echo "$b$a"
    ((a++))
done

echo "########################################list only file###################################################################################"
find /tmp -maxdepth 1 -type f -exec ls -l {} \; #https://www.unix.com/unix-for-dummies-questions-and-answers/95896-list-files-not-directories-current-directory.html
echo "#############################list only Directory##########################################################################################"
cd /tmp | ls -ld  */
echo "#############################list file and dirctory##########################################################################################"
ls -la /tmp
echo "#############################Creating file#########################################################################################"
touch ${b}${a}/file1.text
echo "#############################Writing in file#########################################################################################"
echo "Initial Content" > ${b}${a}/file1.txt
echo ############################# add more contain in file ################################################################################"
sed -i "1s/^/I am DevOps person\nI also need to learn jenkins\ngit\nansiblen\nlinux\nDevOps is a methodology in the \nsoftware development and IT industry. \nUsed as a$
echo "#############################top 5 line ################################################################################""
head -5  ${b}${a}/file1.txt
echo " #############################botom 5 line ################################################################################"
tail -5 ${b}${a}/file1.txt
echo " #############################top 10 lines ################################################################################"
head -10  ${b}${a}/file1.txt

echo "#############################top 5 and bottom 10 lines #####################################################################"
head -5  ${b}${a}/file1.txt | tail -10 /tmp/dir1/file1.txt

echo "#################################################move file1.txt  dir1 to named file2.txt #########################################################"
mv ${b}${a}/file1.txt ${b}${a}/file2.txt
echo "#################################################move file1.txt  dir1 to named file2.txt #########################################################"
mv ${b}${a}/file2.txt /tmp/dir2/
################################################################
cp -R /tmp/dir2/file2.txt /tmp/dir1
##########################################################################
cp -R ${b}${a}/file2.txt ${b}${a}/file3.txt

echo "#################################################clear file file3.txt ######################## "
> ${b}${a}/file3.txt

echo "#################################################delete file file2.txt ######################## "
rm -rf ${b}${a}/file2.txt
#https://www.unix.com/unix-for-dummies-questions-and-answers/95896-list-files-not-directories-current-directory.html
#https://superuser.com/questions/246837/how-do-i-add-text-to-the-beginning-of-a-file-in-bash

