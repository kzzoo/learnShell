#! /bin/bash
:<<EOF
echo "Hello World!"
your_name="tom"
echo $your_name
your_name="alibaba"
echo ${your_name}
myUrl="www.w3school.com"
readonly myUrl
unset your_name
str='this is a string'
your_name='qinjx'
str="Hello,I know you are \"${your_name}\"!" 
echo ${str}
#get the length of string
string="abcd"
echo ${#string} 
#find child string
string="runoob is a great company"
echo `expr index "${string}" is `
#define and read array
array1=(value0 value1 value2 value3)
echo ${array1[2]}
echo ${array1[@]}
#get the number of array
length=${#array1[@]}
echo ${length}
#get the length of ele of arr
length=${#array1[2]}
echo ${length}
EOF
:<<EOF
多行注释
:<<'
asdz
asdf
aweq
'
:<<!
dfads
sdfsdf
sdf
!
EOF
:<<EOF
echo "-- \$* 演示---"
for i in "$*";do
	echo $i
done

echo "-- \$@ 演示---"
for i in "$@";do
	echo $i
done
EOF
:<<!
my_array=(A b "c" 4)

echo "first ele:${my_array[0]}"
echo "second ele:${my_array[1]}"
echo "third ele:${my_array[2]}"
echo "fourth ele:${my_array[3]}"
!
:<<!
my_array[0]=A
my_array[1]=B
my_array[2]=C
my_array[3]=D
echo "the number of array is :${#my_array[*]}"
echo "the number of array is :${#my_array[@]}"
!
:<<!
val=`expr 2 + 2` #There is blank beside +
echo "the sum is :$val"
!
:<<!
a=20
b=30
val=`expr $a \* $b` #There is \ before *
echo "a*b is $val"
val=`expr $a / $b`
echo "a/b is $val"

if [ $a == $b ]
then
	echo "a 等于 b"
fi
if [ $a != $b ]
then
	echo "a 不等于 b"
fi
!
echo `date`
funWithReturn(){
	echo "This function will plus two digits"
	echo "input the first number:"
	read aNum
	echo "input the second number:"
	read bNum
	echo "The digits are $aNum and $bNum"
	return $(($aNum+$bNum))
	}
funWithReturn
echo "the sum of two digits is $? !"

