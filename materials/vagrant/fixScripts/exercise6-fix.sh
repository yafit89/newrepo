 #/bin/bash

hs=`hostname`
echo $hs
 if [ $hs="server1" ]
        then
                remoteserver="root@server2"
                echo "im on server1"
        else
                remoteserver="root@server1"
                echo "im on server2"
        fi
 if [ "$#" -gt  "1" ]
   then
lastline=`echo $#`
######################   2 arguments check pass lets start the scritp ###########


######################  put the last argument(directory path) to a variable #####
######### copy eample   "scp ex6.sh root@server2://home/vagrant/ex6.sh"   ################33
for i in $@; do :; done
echo "Last arg : $i"i ; remotepath=$i
echo " the remothpath is $remotepath"


echo "start "
     echo "supplied more then 2 args"
        for FILE1 in "$@"
        do
echo " check file1 and remotepath"
echo $FILE1
echo $remotepath
echo " end check file1 and remotepath"
        if [ "$FILE1" != "$remotepath" ]
        then
                mycommandtest_orig="scp $FILE1 $remoteserver"":$remotepath"
                mycommandtest="scp -rv $FILE1 $remoteserver"":$remotepath . 2>>scp.output"
                #echo $mycommandtest
                #echo $FILE1
                echo mycomand1
                echo $mycommandtest
                eval " $mycommandtest"
        else
                echo "its last line"
        fi
        done


 else
     echo "please supply minimum 2 args"





 fi

awk '/Sending file/ {print $5}' scp.output > number.txt
awk '{ sum += $1 } END { print sum }' number.txt
