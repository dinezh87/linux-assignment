#!/bin/bash
LOGFILE=/var/log/sys_monitor.log
{
  echo "===== System Report $(date) ====="
  top -b -n1 | head -15
  echo ""
  df -h
  echo ""
  free -m
  echo ""
} >> $LOGFILE

