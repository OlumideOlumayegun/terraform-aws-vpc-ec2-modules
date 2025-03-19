# Terraform AWS VPC & EC2 Module

This project provisions:
- A **VPC** with a single subnet
- An **EC2 instance** launched in the subnet

Both are modularized for reusability and clarity.

## 📂 Project Structure 

```
terraform-aws-vpc-ec2-modules/
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
└── .gitignore
```

## 🚀 Usage

### 1. **Initialize Terraform**

```bash
terraform init
```
### 2. Plan 
```bash
terraform plan
```
### 3. Apply 
```bash
terraform apply
```

### 4. Outputs 
After apply, you'll get:

    EC2 Instance ID
    EC2 Public IP

## Configuration

Edit terraform.tfvars:
```bash
ami_id = "ami-0c55b159cbfafe1f0"
``` 
## 📖 Prerequisites

    Terraform >= 1.0
    AWS CLI configured (aws configure)

## 📄 License
    
    MIT License


