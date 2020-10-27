#! /bin/bash -x

echo " 1) Check First Name Valid Or Not    : "
echo " 2) Check Last Name Valid Or Not     : "
echo " 3) Check Email Valid Or Not         : "
echo " 4) Check Mobile Number Valid Or Not : "
echo " 5) Check Password Valid Or Not      : "

read -p "Enter Choice   : " choice
read -p "Read From User : " word

case $choice in
	1)
	#First name starts with Cap and has minimum 3 characters
	pattern='^[A-Z]{1}[a-zA-Z]{2,}$'
	;;
	2)
	#Last name starts with Cap and has minimum 3 characters
	pattern='^[A-Z]{1}[a-zA-Z]{2,}$'
	;;
	3)
	#Email Valid Or NOT
	pattern='^[a-zA-Z0-9]+([.\-+]?[a-zA-Z0-9]+)*[@][a-z]{2,5}[.]?[a-z]{2,3}([.][a-z]{2})*$'
	;;
	4)
	#Mobile Number Valid Or NOT
	pattern='^(91)[ ][0-9]{10}$'
	;;
	5)
	#Password in that min one Cap ,numbar, special Character, Valid Or NOT
	pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@$#%*+]).{8,}$"
	;;
	*)
	echo "Enter Valid Choice"
	exit
	;;
esac
	if [[ $word =~ $pattern ]]
	then
		echo valid
	else
		echo invalid
	fi
