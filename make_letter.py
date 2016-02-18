import argparse
import os.path
import sys
import shutil
from datetime import datetime

def parse_args():
    args = argparse.ArgumentParser()
    args.add_argument("--subject")
    args.add_argument("--mail_to")
    args.add_argument("--attach", action='append', required=False)
    args.add_argument("--mail_dir")
    return args.parse_args()

def write_file(fname, content):
  os = open(fname, 'w')
  os.write(content)
  os.close()

if __name__ == '__main__':
  args = parse_args()
    
  print args
  if not os.path.isdir(args.mail_dir):
    print >> sys.stderr, "No such directory: %s"%(args.mail_dir,)
    sys.exit(1)

  report = "report_" + datetime.now().strftime('%Y.%m.%d_%H:%M:%S')
  os.mkdir(args.mail_dir + "/" + report)
  write_file(args.mail_dir + "/" + report + "/subject", args.subject)
  write_file(args.mail_dir + "/" + report + "/mail_to", args.mail_to)
  os.mkdir(args.mail_dir + "/" + report + "/attach")
  
  for attach_file in args.attach:
    shutil.copy(attach_file, args.mail_dir + "/" + report + "/attach/")


