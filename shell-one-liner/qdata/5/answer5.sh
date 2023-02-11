#!/bin/bash

cat ntp.conf | awk '$1="pool" {print $2}'

# 出力がおかしんだが。おそらくコメント行のが出力されている。アッファイ
# /etc/ntp.conf,
#
# /var/lib/ntp/ntp.drift
#
# Enable
# /var/log/ntpstats/
#
# loopstats
# loopstats
# peerstats
# clockstats
#
# Specify
#
# Use
# on
# more
# 0.ubuntu.pool.ntp.org
# 1.ubuntu.pool.ntp.org
# 2.ubuntu.pool.ntp.org
# 3.ubuntu.pool.ntp.org
#
# Use
# ntp.ubuntu.com
#
# Access
# details.
# might
#
# Note
# that
# up
#
# By
# -4
# -6
#
# Local
# 127.0.0.1
# ::1
#
# Needed
# source
#
# Clients
# cryptographically
# 192.168.123.0
#
#
# If
# (Again,
# 192.168.123.255
#
# If
# next
# auth
#
#
# recquired
#
#
# 127.127.8.1
# 127.127.8.1
#
# 127.127.22.1
# 127.127.22.1
