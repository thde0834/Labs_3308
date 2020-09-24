#!/bin/bash
# Authors: Thomas Deaner
# Date: 09/23/2020

sudo cp ~/var/log/sysfile ~/
grep -ow 'error' file | tee error_log_check.txt
sendmail thde0834@colorado.edu < error_log_check.txt
