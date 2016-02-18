#!/bin/bash

path="$1"

# send the last report
#last_report=$(find "$path" -maxdepth 1 -type d -name 'report*' | xargs ls -1trd | tail -n1)

last_report=$(ls -1trd $@ | tail -n1)
[ -d "$last_report" ] || { echo "No report directory found" > 2; exit 1; }

attach_files=$(ls $last_report/attach/ | xargs -I{} echo -ne "-a {} ")
echo "The shorter report the better: [$last_report]!"
echo mutt -s ""$(cat $last_report/subject)"" ""$(cat $last_report/mail_to)"" $attach_files
# ^^ Uncomment me for use in real system
