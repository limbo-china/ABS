#!/bin/bash

a=375
hello=$a

#赋值不能有空格

echo hello

echo $hello

echo ${hello}

echo "$hello"

echo "${hello}"

echo

hello="A B  C   D"
echo $hello
echo "$hello"   #上面两者输出不同

echo 

echo '$hello' #直接输出

hello=
echo "\$hello (null value) = $hello" #输出空值

var1=21 var2=22 var3=$V3
echo
echo "var1=$var1 var2=$var2 var3=$var3"

echo; echo

numbers="one two three"
other_numbers="1 2 3" #有空格要加引号
echo "numbers = $numbers"
echo "other_numbers = $other_numbers"

mixed_bag=2\ ---\ Whatever
echo "mixed_bag = $mixed_bag" #空格字符被转义
echo; echo

echo "uninit_var = $uninit_var" #输出未初始化的变量
uninit_var=
echo "uninit_var = $uninit_var" #赋值空值
uninit_var=23
echo "uninit_var = $uninit_var" 
unset uninit_var 
echo "uninit_var = $uninit_var" #unset一个变量,为空值
uninit_var+=5
echo "uninit_var = $uninit_var" #未初始化变量在算术运算中默认为0


echo
exit 0

