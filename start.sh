#!/bin/sh

rm /etc/ssmtp/ssmtp.conf

echo "${config}" >> /etc/ssmtp/ssmtp.conf

echo "From: ${from}" >> /body.txt

echo >> /body.txt

echo "Subject: ${subject} " >> /body.txt

echo >> /body.txt

echo "${body}" >> /body.txt

ssmtp ${to} < /body.txt
