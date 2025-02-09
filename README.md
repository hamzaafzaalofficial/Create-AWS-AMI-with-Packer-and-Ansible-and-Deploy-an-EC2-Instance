# Create-AWS-AMI-with-Packer-and-Ansible-and-Deploy-an-EC2-Instance
---
## Objectives:
1. Define a Packer template to create an AWS AMI.
2. Use Ansible to provision security configurations on the AMI.
3. Deploy an EC2 instance using the generated AMI.

## Prerequisites:
1. AWS Account: An AWS account with permissions to create EC2 instances and AMIs.
2. Packer Installed: Install Packer on your local machine. Follow the [pakcer-setup guide] if needed
3. Ansible Installed Install Ansible on your local machine. [This guide doesnot cover ansible setup] 
4. AWS CLI Configured: Ensure your AWS CLI is configured with proper credentials and region.

## Tasks: 
Step 1: Define a Packer Template for AWS AMIs
#find the attached packer template in this repo, add your aws credentials. 
Step 2: Use Ansible to Provision Security Configurations
#find the attached ansible playbook in this repo.
Step 3: Build the AMI with Packer

```bash
vi aws-ubuntu.pkr.hcl
vi playbook.yml
packer init .
packer fmt .
packer validate .
packer build .
```
Step 4: Deploy an EC2 Instance from the Generated AMI
1. Use the AWS CLI or Console to launch a new EC2 instance.
2. Verify the EC2 instance.

## Summary: 
This guide successfully creates a Packer template to build an AWS AMI, used Ansible to provision security configurations on the AMI, and deployed an EC2 instance
using the generated AMI. This automated process ensures that your instances are consistently built with the necessary security configurations in place.
      
