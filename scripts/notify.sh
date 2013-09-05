#!/bin/sh

cmd=""
for (( i=1; i<=$#; i++ ))
do
		eval cmd+=\$$i
		cmd+=" "
done

eval $cmd

if [ $? -eq 0 ]
then
		subj="$1...successful"
else
		subj="$1...failure"
fi

echo $cmd | mail -s $subj robertu13@gmail.com
