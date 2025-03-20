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

### 1. **Format**
Format the code in all of your files in preparation for deployment

```bash
terraform fmt -recursive
```
### 2. **Initialize Terraform**
Initialize the Terraform configuration to fetch any required providers and get the code being referenced in the module block:

```bash
terraform init
```
### 3. **Validate**
Validate the code to look for any errors in syntax, parameters, or attributes within Terraform resources that may prevent it from deploying correctly

```bash
terraform validate
```
You should receive a notification that the configuration is valid.

### 4. **Plan**
Review the actions that will be performed when you deploy the Terraform code:

```bash
terraform plan
```
### 5. **Apply**
Deploy the infrastructure

```bash
terraform apply --auto-approve
```
Note: The --auto-approve flag will prevent Terraform from prompting you to enter yes explicitly before it deploys the code.

### 6. **Outputs** 
After apply, you'll get:

    EC2 Instance ID
    EC2 Public IP

View all of the resources that Terraform has created and is now tracking in the state file:

```bash
terraform state list
```
### 7 **Destroy**
Tear down the infrastructure you just created before moving on:

```bash
terraform destroy
```
When prompted, type yes and press Enter.

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


