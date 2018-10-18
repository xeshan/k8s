#!/bin/bash
# This script create Jenkins Master & Slaves on top of Kubernetes...

create_env()
{
echo "Creating service..."
/usr/local/bin/kubectl create -f jenkins-service.yml
echo "Building template..."
/usr/bin/docker build -t zeshan/jenkins:v1 .
echo "Creating deployment..."
/usr/local/bin/kubectl create -f jenkins-deployment.yml
}

echo "Start of script..."
create_env
echo "End of script..."
exit 0
