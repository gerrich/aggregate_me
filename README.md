
'''
aggregate_me$ rm -r pool/*
aggregate_me$ ./readme.sh
Namespace(attach=['file1.txt', 'file2.txt'], mail_dir='pool', mail_to='gogo-query-team@corp.mail.ru', subject='Everything FAILS')
The shorter report the better: [pool/report_2016.02.18_16:09:11]!
mutt -s Everything FAILS gogo-query-team@corp.mail.ru -ne -a file1.txt -ne -a file2.txt
aggregate_me$ ll pool/
total 8
drwxr-xr-x   4 gerich  staff  136 Feb 18 16:09 ./
drwxr-xr-x   5 gerich  staff  170 Feb 18 16:09 report_2016.02.18_16:09:11/
-rw-r--r--   1 gerich  staff    8 Feb 18 15:56 .gitignore
drwxr-xr-x  15 gerich  staff  510 Feb 18 15:55 ../
aggregate_me$ ./readme.sh
Namespace(attach=['file1.txt', 'file2.txt'], mail_dir='pool', mail_to='gogo-query-team@corp.mail.ru', subject='Everything FAILS')
The shorter report the better: [pool/report_2016.02.18_16:09:24]!
mutt -s Everything FAILS gogo-query-team@corp.mail.ru -ne -a file1.txt -ne -a file2.txt
aggregate_me$ ll pool/
total 8
drwxr-xr-x   5 gerich  staff  170 Feb 18 16:09 ./
drwxr-xr-x   5 gerich  staff  170 Feb 18 16:09 report_2016.02.18_16:09:24/
drwxr-xr-x   5 gerich  staff  170 Feb 18 16:09 report_2016.02.18_16:09:11/
-rw-r--r--   1 gerich  staff    8 Feb 18 15:56 .gitignore
drwxr-xr-x  15 gerich  staff  510 Feb 18 15:55 ../
'''
