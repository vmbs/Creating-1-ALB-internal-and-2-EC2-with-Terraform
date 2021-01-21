# Creating-1-ALB-internal-and-2-EC2-with-Terraform
How to create one Application Load Balancer with internal network and 2 instances EC2 with Terraform

First let’s set up our provider: provider.tf

This is the backend states from terraform where is going to S3 Bucket: backend.tf

We creates a new VPC with no GateWay: vpc.tf

We have the configuration for the Application Load Balancer: alb.tf

We set the AMI that will update and launch configuration of the cluster: data.tf


