#!/bin/sh

echo "Start SSHD"
/usr/sbin/sshd

echo "Start shiny application"
R -e "shiny::runApp('/app', host = '0.0.0.0', port = 3838)"