#!/usr/bin/bash
echo "ENTER THE SUBNET YOU WANT TO SCAN:"
read subnet
echo " "
echo "WHAT WOULD YOU LIKE TO NAME THE FILE? (add file type, ex: .txt, .py)"
read filename
echo " "
echo "YOUR SCAN WILL BE SAVED TO:" $filename
touch $filename
echo " "
echo "THANK YOU!"
echo " "
echo "RUNNING SCAN ON:" $subnet
nmap -sV -p 21-23,25,53,80,110,135-139,443,445,1433,1434,3389,8080 $subnet > $filename
echo " "
echo " "
echo "***************************************************************************************************************************************************>
echo "***************************************************************************************************************************************************>
echo " "
echo " "
cat $filename
exit
