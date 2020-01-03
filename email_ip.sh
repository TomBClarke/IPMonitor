#!/bin/bash
# Gets the internet IP according to the PI and emails it using MSMTP and the email_template.txt

date=$(date +"%d-%m-%YT%T")
ip=$(./getip.sh)

cp email_template.txt email_working.txt

sed -i -e 's/%IP%/'${ip}'/g' -e 's/%DATE%/'${date}'/g' email_working.txt

cat email_working.txt | msmtp tomclarke96@hotmail.co.uk
