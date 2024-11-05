### Step 3: Launching EC2 Instance for Web Server

**Objective:**  
Launch an EC2 instance within the public subnet to serve as the web server for the application.

**Components:**  
- **EC2 Instance**: A virtual server in the AWS cloud to host the web application.

#### Directory Structure
```
.
├── README.md
├── environments
├── global
│   └── providers.tf
├── main.tf                  ## Main Terraform configuration file that defines the overall infrastructure setup and links to module configurations.
├── modules
│   ├── ec2
│   │   ├── main.tf          # Contains EC2 instance resources
│   │   ├── outputs.tf       # Outputs for EC2, like instance ID and public IP
│   │   └── variables.tf     # Input variables, like instance type and AMI ID
│   ├── security_group
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── vpc
│       ├── main.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       └── variables.tf
├── step1.md
├── step2.md
├── step3.md
├── terraform.tfstate        # State file for tracking resource changes
└── variables.tf             # Global input variables
```

#### Files and Configurations

1. **`main.tf`**  
   Defines the EC2 instance resource with specified instance type, AMI ID, and Security Group.

2. **`outputs.tf`**  
   Outputs the instance details such as instance ID and public IP address.

3. **`variables.tf`**  
   Defines input variables for configuring the EC2 instance.

#### Launching the EC2 Instance

To launch the EC2 instance, follow these steps:

1. **Navigate to the project directory**:
   ```bash
   cd ~/web-app-infra-terraform
   ```

2. **Initialize Terraform**:
   Run the following command to initialize your Terraform workspace:
   ```bash
   terraform init
   ```

3. **Plan the Terraform deployment**:
   Generate and review the execution plan to ensure everything is configured correctly:
   ```bash
   terraform plan
   ```

4. **Apply the Terraform configuration**:
   Execute the following command to apply the configuration and create the resources in AWS:
   ```bash
   terraform apply
   ```

   After confirmation, Terraform will create the EC2 instance.

#### Result

After executing the above commands, the EC2 instance is successfully launched and running in AWS.

![EC2 Instance Status](https://raw.githubusercontent.com/SaraIravani/web-app-infra-terraform/main/web-app-infra-terraform/photos/create_VM.JPG)

