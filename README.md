# Creating-1-ALB-internal-and-2-EC2-with-Terraform
How to create one Application Load Balancer with internal network and 2 instances EC2 with Terraform

First let’s set up our provider: provider.tf

This is the backend states from terraform where is going to S3 Bucket: backend.tf

We creates a new VPC with no GateWay: vpc.tf

We have the configuration for the Application Load Balancer: alb.tf

We set the AMI that will update and launch configuration of the cluster: data.tf

We can see that the load balancer is open to the world on tcp/80 and tcp/443 and the ECS EC2 instances have ports 32768 to 65535 open from the load balancer. This is because when we select the container port to 0 in the task definition AWS will randomly assign a port from this range to the container: security.tf



