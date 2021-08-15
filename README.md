# MyFullstack-microservices-kube-project

## Last deployment status
[![CircleCI](https://circleci.com/gh/elidzah/MyFullstack-microservices-kube-project/tree/main.svg?style=svg)](https://circleci.com/gh/elidzah/MyFullstack-microservices-kube-project/tree/main)

## Project Overview

This project realize a simple AWS infrastructure with VPC, a subnet an InternetGateway and a EC2 instance with some security group settings.

The infrastructure support the Rollout of an update of a house price prediction service deployed as a flask application.

the infrastructure is configured to run docker containers engine and kubernetes
- Docker containers engine is installed by the mean of relative package
- kubernetes is installed with GoogleCloud SDK toghether with kubectl and minikube

a cluster is started using minikube and a blue version of predtion app is deployed as a kubernetes service on the cluster created

a new version of the prediction app is build and uploaded as a docker container
The newly updated image is so used to rollout the new service version by the mean of kubectl, setting a new image and rolling out the new deployment
