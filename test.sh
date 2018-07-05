#! /bin/bash
:<<! 
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
!

echo "shell 传递参数实例！"
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "第二个参数为：$2"
echo "第三个参数为：$3"
