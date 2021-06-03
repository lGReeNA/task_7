#! bin/bash

if [ -z $1 ]
then
        echo "Parameter is required"
	exit 1
else
        if [ -z $2 ]
        then
                echo "Both parameters are required"
		exit 1
	else
		sed -i "s/$1/$2/g" text.txt
	fi
fi

exit 0

