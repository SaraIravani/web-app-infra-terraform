### Step 3: Launching EC2 Instance for Web Server

**Objective:**  
Launch an EC2 instance within the public subnet to serve as the web server for the application.

**Components:**  
- **EC2 Instance**: A virtual server in the AWS cloud to host the web application.

#### Directory Structure
```
modules
└── ec2
    ├── main.tf          # Contains EC2 instance resources
    ├── outputs.tf       # Outputs for EC2, like instance ID and public IP
    └── variables.tf     # Input variables, like instance type and AMI ID
```

#### Files and Configurations

1. **`main.tf`**  
   Defines the EC2 instance resource with specified instance type, AMI ID, and Security Group.

2. **`outputs.tf`**  
   
3. **`variables.tf`**  
   Defines input variables for configuring the EC2 instance.


This setup will deploy an EC2 instance in the public subnet with the specified security group, ready to serve as the web server.
