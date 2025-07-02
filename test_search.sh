#!/bin/bash

echo "Type in a file type $0"

FILE_TYPE=$1

find / -type f -name "*.$FILE_TYPE" -user "wmckinnon" 2>/dev/null
