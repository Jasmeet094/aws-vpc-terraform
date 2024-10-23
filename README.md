# VPC Infrastructure with Terraform

This project creates a Virtual Private Cloud (VPC) and its associated resources using Terraform. The project follows a modular approach for creating a scalable and reusable VPC architecture in AWS.

## Table of Contents
- [Overview](#overview)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Variables](#variables)
- [Outputs](#outputs)
- [Backend Configuration](#backend-configuration)


## Overview

This project is designed to create a highly available and secure VPC in AWS. It includes the following:
- VPC creation
- Public, application, and data subnets
- Internet Gateway (IGW)
- NAT Gateway(s)
- Route Tables and Route Associations
- Network ACLs (NACLs) and Rules
- VPC Endpoints for services such as S3, ECS, and ECR
- VPC Flow Logs with optional encryption using AWS KMS
- Modular design for easy customization and reusability

## Architecture

The project creates the following resources:
- **VPC**: A new VPC with custom CIDR and DNS settings.
- **Subnets**: Public, application, and data subnets across multiple availability zones.
- **Internet Gateway**: For public subnet communication with the internet.
- **NAT Gateways**: For private subnet internet access.
- **Route Tables and Associations**: Separate routing rules for public and private subnets.
- **Network ACLs and Rules**: To control traffic between subnets and external sources.
- **VPC Endpoints**: Private endpoints for S3, ECS, and ECR.
- **Flow Logs**: Optional flow logs with encryption support.

## Prerequisites

Ensure you have the following before using this project:
- Terraform (>= 1.0)
- AWS CLI configured with appropriate permissions
- An S3 bucket and DynamoDB table for Terraform backend state (if using remote state)

## Project Structure

```bash
.
├── module/
│   ├── acl.tf
│   ├── data.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
├── backend.tf
├── main.tf
├── outputs.tf
├── providers.tf
└── variables.tf
