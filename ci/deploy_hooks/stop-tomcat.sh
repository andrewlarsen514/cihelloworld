#!/bin/bash

sudo service tomcat8 stop

sudo find . \( -name "hello*" -a -name "*.war" \) -exec rm -rf {} \;


