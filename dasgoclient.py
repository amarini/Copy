#!/usr/bin/env python
import os,sys,json
import argparse
from subprocess import check_output

parser = argparse.ArgumentParser()
parser.add_argument( '-query', dest='query' ,help='query', default=None)
parser.add_argument( '--do', help='Do query', action='store_true')
args = parser.parse_args()
dbname="dasgoclient_condor_db.json"

with open(dbname) as f:
    db=json.load(f)

if args.do:
    # do query locally and save result
    print ("Calling: dasgoclient -query='%s'"%args.query)
    db[args.query]=check_output("dasgoclient -query='%s'"%args.query, shell=True)
    jstring = json.dumps(db,sort_keys=True, indent=4)
    fout=open(dbname,"w")
    fout.write(jstring)
    fout.write('\n')
    fout.close()
    sys.exit(0)

#db={} #'query -> result'
print db[args.query],

