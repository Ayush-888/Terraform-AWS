# Infrastructure Creation with Terraform

This repository contains Terraform modules for creating infrastructure on AWS, including VPC, ALB, EC2 instances, EKS clusters, S3 buckets, subnets, and security groups. The infrastructure is modularized for easier management and reusability.

## Modules

The following Terraform modules have been created:

- **VPC**: Provisions a Virtual Private Cloud.
- **Subnets**: Creates public and private subnets.
- **ALB**: Deploys an Application Load Balancer.
- **EC2**: Launches EC2 instances.
- **EKS**: Sets up an Elastic Kubernetes Service cluster.
- **S3**: Configures S3 buckets for storage.
- **Security Group**: Manages security groups for EC2 and other services.

## Prerequisites

Before you begin, ensure that you have the following installed:

- Terraform v1.x
- AWS CLI configured with appropriate credentials
- Access to an AWS account

## Project Structure

├── modules/
│   ├── vpc/
│   ├── alb/
│   ├── ec2/
│   ├── eks/
│   ├── s3/
│   ├── subnet/
│   ├── security-group/
├── backend.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
├── variables.tf
└── README.md



## Explanation of Files

- **modules/**: Contains separate modules for each AWS resource (VPC, ALB, EC2, etc.).
- **backend.tf**: Defines the remote backend for storing the Terraform state file.
- **main.tf**: Main Terraform configuration file where the infrastructure modules are called and resources are created.
- **outputs.tf**: Contains the outputs for the infrastructure, such as VPC ID, subnet IDs, etc.
- **provider.tf**: Specifies the cloud provider (AWS in this case) and its configuration (region, credentials, etc.).
- **terraform.tfvars**: Stores variable values used in the Terraform configurations. Customize it for your specific needs.
- **variables.tf**: Defines all the variables used across the infrastructure modules.
- **README.md**: Documentation for the repository.

## Usage

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/Ayush-888/Terraform-AWS.git
    cd Terraform-AWS
    ```

2. **Initialize Terraform**:  
    Initialize the Terraform configuration to download necessary providers and modules.
    ```bash
    terraform init
    ```

3. **Plan the Infrastructure**:  
    Run the following command to see the execution plan.
    ```bash
    terraform plan
    ```

4. **Apply the Configuration**:  
    Apply the Terraform configuration to create the infrastructure.
    ```bash
    terraform apply
    ```

5. **Destroy the Infrastructure**:  
    To tear down the infrastructure when it is no longer needed, run:
    ```bash
    terraform destroy
    ```

## Remote Backend

The `backend.tf` file configures a remote backend for storing the Terraform state file. Ensure you update the backend settings according to your environment (e.g., S3 bucket and DynamoDB table).
