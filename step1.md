
# Web Application Infrastructure - Step 1: VPC Setup

This is the first step in deploying a simple web application infrastructure on AWS using Terraform. In this step, we will set up the network foundation, including a Virtual Private Cloud (VPC) with both public and private subnets.

## Objective

Create a basic VPC setup to host application resources in a secure and organized manner. This setup includes:
- A main VPC
- One public and one private subnet
- An Internet Gateway for public access
- A Route Table to control traffic flow

## Prerequisites

Make sure you have the following tools installed:
- **Terraform** (version >= 0.12)
- **AWS CLI** configured with the necessary credentials
- **Git** (optional for version control)

## Project Structure

The project files are organized as follows:

```
web-app-infra-terraform/
├── environments/
├── global/
│   └── providers.tf          # Provider configuration (e.g., AWS)
├── modules/
│   └── vpc/
│       ├── main.tf           # Main configuration for VPC resources
│       ├── outputs.tf        # Outputs for VPC resources
│       ├── terraform.tfvars  # Variable values for the VPC
│       └── variables.tf      # Variable definitions
└── README.md                 # Project documentation
```

## Step-by-Step Guide

### Step 1: Configure Providers

In the `global/providers.tf` file, define the AWS provider as follows:

### Step 2: Define VPC in main.tf

In `modules/vpc/main.tf`, define your VPC, subnets, Internet Gateway, and Route Table:

### Step 3: Set Variables in variables.tf

In `modules/vpc/variables.tf`, define variables for CIDR blocks and VPC settings:

### Step 4: Define Outputs

In `modules/vpc/outputs.tf`, specify output values for reference in future steps:

### Step 5: Initialize and Apply Terraform

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Apply the Configuration**:
   ```bash
   terraform apply
   ```

   Confirm the prompt to create the resources. Terraform will set up the VPC, subnets, Internet Gateway, and Route Table as defined.

## Next Steps

In the next step, we will create a Security Group to manage access to the web server and control HTTP and SSH traffic.
