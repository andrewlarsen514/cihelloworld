#!/bin/bash

sudo service tomcat8 stop

sudo find . \( -name "allie*" -a -name "*.war" \) -exec rm -rf {} \;


