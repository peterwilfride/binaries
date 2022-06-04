#!/bin/bash

#opt=$1
#fileId=$2
#fileName=$3

opt="-L"
fileId="1U5M3BPT7da3OjIWTXwSKafqi6HbODwao"
fileName="S01E03.mkv"

# for small files
#echo "Downloading a small file"
#wget "https://drive.google.com/uc?export=download&id=${fileId}" -O ${fileName}

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=${fileId}" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${fileId}" -O ${fileName} && rm -rf /tmp/cookies.txt

# for big files
#echo "Downloading a big file"
#curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
#code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
#curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName}