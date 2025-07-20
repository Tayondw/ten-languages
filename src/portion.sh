#!/bin/bash
set -e

# Configuration variables
AWS_REGION="us-east-1"
APP_NAME="plether-server"
ECR_REPO_NAME="$APP_NAME"
VPC_CIDR="10.0.0.0/16"
RDS_DB_NAME="plether_server"
RDS_USERNAME="postgres"
RDS_INSTANCE_TYPE="db.t3.micro"
ECS_CLUSTER_NAME="$APP_NAME-cluster"
CONTAINER_PORT=5678
TASK_CPU="1024"
TASK_MEMORY="2048"
DESIRED_COUNT=2

# Generate a secure password for RDS
RDS_PASSWORD=$(openssl rand -base64 16)

echo "Starting deployment of $APP_NAME to AWS..."

# Step 1: Create VPC and networking components
echo "Creating VPC and networking components..."
VPC_ID=$(aws ec2 create-vpc --cidr-block $VPC_CIDR --query 'Vpc.VpcId' --output text)
aws ec2 create-tags --resources $VPC_ID --tags Key=Name,Value=$APP_NAME-vpc

# Create subnets (2 public, 2 private across different AZs)
AZ1="${AWS_REGION}a"
AZ2="${AWS_REGION}b"