# DevOps Deployment Project
## Description

This project aims to demonstrate the configuration and deployment of an application following DevOps best practices. We use containers to ensure application portability, Terraform for infrastructure as code provisioning, GitHub Actions for CI/CD pipeline automation, and AWS for hosting and cloud services.

## Project Overview

![](./image/flow.drawio%20.svg)

## Project Structure

- **Dockerfile**: Used to build the application image.
- **Terraform**: Used to provision resources on AWS, including the ECR repository and necessary IAM roles.
- **GitHub Actions**: Used to automate the build, test, and deployment of the application.

## How Can I Run?

### Terraform Remote State Setup

#### Introduction

This guide outlines the steps to set up a remote state for Terraform using AWS S3 and DynamoDB. A remote state allows multiple users to work on the same infrastructure, avoiding conflicts by storing the state file in a centralized location.

#### Prerequisites

Before proceeding, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS CLI configured with the necessary credentials and permissions.
- An S3 bucket and a DynamoDB table already created, or the Terraform configuration in this step will create them.

#### Steps to Set Up Remote State

1. Navigate to the Remote State Configuration Directory

Move to the directory where the Terraform configuration for setting up the remote state is located:

```
cd terraform/00-remote-state
terraform init
```

Review the Terraform Plan

```
terraform plan
```

Apply the Terraform Configuration

```
terraform apply -auto-approve
```

### Application Deployment Resources Setup

#### Introduction

This guide provides instructions for creating the infrastructure resources necessary for deploying the application. We will use Terraform to provision resources on AWS, such as ECR repositories, IAM roles, and other related services.

#### Prerequisites

Before you begin, make sure you have:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS CLI configured with the appropriate credentials and permissions.
- The remote state configured and working as described in the previous section.

#### Steps to Create Deployment Resources

1. Navigate to the Configuration Directory

First, navigate to the directory where the Terraform configurations for creating the necessary deployment resources are located:

```
cd terraform/01-application
terraform init -backend=true -backend-config="config/dev/backend.hcl"
```

Review the Terraform Plan

```
terraform plan
```

Apply the Terraform Configuration

```
terraform apply -auto-approve
```
