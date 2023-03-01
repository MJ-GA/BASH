#/bin/bash
#Lab 9
#Mohamed Jouini 040994664  -
#Section number 311
#mycalc
#2021/04/15
#This script performs addition and substraction
echo This script performs addition and substraction
add ()
{
echo The sum of $1 plus $2 equals `expr $1 + $2`
}
subtract ()
{
echo The difference of $1 minus $2 equals `expr $1 - $2`
}
# checking the order of input
if [ $# = 3 ] && [ $2 = "+" ];
 then
 add $1 $3
 exit
elif [ $# = 3 ] && [ $2 = "-" ];
 then
 subtract $1 $3
 exit
elif [ $# != 3 ] && [ $# != 0 ];
 then
 echo No parameters or three parameters need to be entered.
 exit
fi
while [ true ]
do
# Menu
 echo 'Exit or do a calculation'
 echo "C) Calculation"
 echo "X) Exit"
 read menu1
 while [ $menu1 != "C" ] && [ $menu1 != "c" ] && [ $menu1 != "X" ] &&
[ $menu1 != "x" ]
 do
 echo Invalid entry: 'C' or 'X' need to be entered.
 read menu1
 done
 if [ $menu1 = "X" ] || [ $menu1 = "x" ]; then
 exit
 fi
# Enter integer 1
 clear
 echo Please enter an integer number or 'X' to exit:
 read menu21
 if [ $menu21 = "X" ] || [ $menu21 = "x" ];
 then
 exit
 fi
# Enter operator
 clear
 echo "+) Add"
 echo "-) Subtract"
 echo "X) Exit"
 read menu3
 while [ $menu3 != "-" ] && [ $menu3 != "+" ] && [ $menu3 != "X" ] &&
[ $menu3 != "x" ]
 do
 echo Invalid entry: '+' or '-' or 'X' need to be entered.
 read menu3
 done
 if [ $menu3 = "X" ] || [ $menu3 = "x" ];
 then
 exit
 fi
# Enter 2nd integer
 clear
 echo Please enter an integer number or 'X' to exit:
 read menu22
 if [ $menu22 = "X" ] || [ $menu22 = "x" ];
 then
 exit
 fi
 if [ $menu3 = "+" ];
 then #perform addition or substraction 
 add $menu21 $menu22
 else
 subtract $menu21 $menu22
 fi
 sleep 3
done
