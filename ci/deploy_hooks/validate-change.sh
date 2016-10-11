#!/bin/bash

CRUMB=$(curl 'http://jenkins:23b8bc5a5494ba9e12dd727da457cfc4@jenkins.nowsportsrankings.com:8080/jenkins/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,%22:%22,//crumb)')

if [ "$DEPLOYMENT_GROUP_NAME" == "TEST" ]
then
curl -jenkins --header "$CRUMB" -X POST http://jenkins:23b8bc5a5494ba9e12dd727da457cfc4@jenkins.nowsportsrankings.com:8080/jenkins/job/AdministrationServices/job/AdministrationUIIntegration/build?delay=0sec -v
fi
if [ "$DEPLOYMENT_GROUP_NAME" == "QA" ]
then
curl -jenkins --header "$CRUMB" -X POST http://jenkins:23b8bc5a5494ba9e12dd727da457cfc4@jenkins.nowsportsrankings.com:8080/jenkins/job/AdministrationServices/job/AdministrationUIIntegrationQA/build?delay=0sec -v
fi