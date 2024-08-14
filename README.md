# DevOps Deployment Project

## Description

This project aims to demonstrate the configuration and deployment of an application following DevOps best practices. We use containers to ensure application portability, Terraform for infrastructure as code provisioning, GitHub Actions for CI/CD pipeline automation, and AWS for hosting and cloud services.

## Project Overview

![](./image/flow.drawio%20.svg)



## Project Structure

- **Dockerfile**: Used to build the application image.
- **Terraform**: Used to provision resources on AWS, including the ECR repository and necessary IAM roles.
- **GitHub Actions**: Used to automate the build, test, and deployment of the application.