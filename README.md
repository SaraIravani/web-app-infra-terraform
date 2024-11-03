# 🌟 Launching a Simple Web Application Using Terraform

This scenario guides you through the step-by-step implementation of a simple infrastructure on AWS for running a web application, encompassing networking, security, servers, and databases.

## 🚀 Scenario Steps

### Step 1: [Create VPC and Main Networking](step1.md)
- **Objective**: Build a simple VPC with both private and public subnets.
- **Components**: VPC, Subnet (one public and one private), Internet Gateway, and Route Table.
- This module serves as the foundation for creating a network infrastructure where future services will reside.

---

### Step 2: [Set Up Security Group for Web Server](step2.md)
- **Objective**: Create a Security Group to control incoming and outgoing traffic.
- **Components**: Security Group allowing HTTP and SSH access.
- Think of this stage as your security module for managing access to the infrastructure.

---

### Step 3: [Launch EC2 for Web Server](step3.md)
- **Objective**: Deploy an EC2 instance in the public subnet and link it to the Security Group.
- **Components**: EC2 instance, Amazon Machine Image (AMI), instance type.
- This module defines and sets up your application servers.

---

### Step 4: [Add S3 Bucket for Static File Storage](step4.md)
- **Objective**: Create an S3 Bucket to store static files for your application (like images).
- **Components**: S3 Bucket and access settings.
- This module assists in managing external data storage.

---

### Step 5: [Integrate RDS for Database](step5.md)
- **Objective**: Set up an RDS database (e.g., MySQL) for your application.
- **Components**: RDS instance, subnet group, database security group.
- This module manages data and database storage effectively.

---

### Step 6: [Add Load Balancer](step6.md)
- **Objective**: Create a Load Balancer to distribute incoming traffic across multiple servers.
- **Components**: Load Balancer, Target Group, Listener.
- This module enhances the scalability and availability of your application.

---

### Step 7: [Implement CloudWatch for Monitoring and Logging](step7.md)
- **Objective**: Activate monitoring and log collection using CloudWatch.
- **Components**: CloudWatch Alarms, log groups, and metrics.
- Leverage this final module for performance monitoring and log management of your servers.

---

🌈 **Get Started!** Dive into each step by clicking on the links above to build your AWS infrastructure with Terraform. Happy coding! 🎉
