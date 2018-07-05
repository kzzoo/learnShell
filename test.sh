#! /bin/bash
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
