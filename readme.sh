#!/bin/bash

# make 2 attachements
date > file1.txt
date > file2.txt

# create new report in directory report pool <mail_dir>
# NB report is a directory itself
python make_letter.py --attach file1.txt --attach file2.txt --subject "Everything FAILS" --mail_to gogo-query-team@corp.mail.ru --mail_dir pool

# Send the last report w/o aggregation
bash send_last_report.sh pool/report_*

if false; then

# Make aggregated report & sned it
aggregate.py pool agg_pool && \
bash send_last_report.sh agg_pool/report_*

fi
