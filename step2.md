### Step 2: Creating Security Group for Web Server

**Objective:**  
Create a Security Group to control incoming and outgoing traffic, providing security for the web server.

**Components:**  
- **Security Group**: Allows HTTP (port 80) and SSH (port 22) access to the web server.

#### Directory Structure
```
modules
└── security_group
    ├── main.tf
    ├── outputs.tf
    └── variables.tf
```

#### Files and Configurations

1. **`main.tf`**  
   Defines the Security Group resource with rules to allow HTTP and SSH access.

2. **`outputs.tf`**  
   Outputs the Security Group ID.

3. **`variables.tf`**  
   Defines variables used in the module.

This setup will enable secure access to the web server through HTTP and SSH.
