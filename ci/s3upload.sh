#!/bin/bash

#AWS="/usr/local/bin/aws"

APPLICATION_NAME="hello-allie"

BUCKET_NAME="allstatebucket"
FULL_BUCKET="s3://${BUCKET_NAME}/${APPLICATION_NAME}/"
SOURCE_FILE=$1

echo "APPLICATION_NAME: ${APPLICATION_NAME}"
echo "FULL BUCKET: ${FULL_BUCKET}"
echo "SOURCE FILE: ${SOURCE_FILE}"

export AWS_ACCESS_KEY_ID=C99F5C7EE00F1EXAMPLE
export AWS_SECRET_ACCESS_KEY=a63xWEj9ZFbigxqA7wI3Nuwj3mte3RDBdEXAMPLE

aws s3 cp ${SOURCE_FILE} ${FULL_BUCKET}

if [ $? -eq 0 ]
then 
	echo "Copy successful"
else 
	echo "Cope Failed!"
	exit 1
fi


