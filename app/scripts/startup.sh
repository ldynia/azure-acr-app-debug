#!/bin/sh

echo "Start SSHD"
/usr/sbin/sshd

echo "Start Nginx"
nginx -g "daemon off;"
