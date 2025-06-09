# terraform-aws-lab

A hands-on Terraform workshop for provisioning AWS S3 buckets and exploring core S3 concepts.

## 📦 What Is S3?

Amazon S3 (Simple Storage Service) is an object-based storage service designed for:
- **Unlimited scale**: Store virtually any amount of data.
- **Global namespace**: Bucket names are unique across all AWS accounts.
- **High durability & availability**: 
  - 99.999999999% (11 nines) durability  
  - 99.95–99.99% availability, depending on storage class.

You can upload **any** file type—photos, videos, documents, code, backups, etc.—and access them via API, SDK, or the AWS Console.

## 🔍 Key Features

- **Storage Classes**  
  Tailor cost/performance with classes like Standard, Intelligent-Tiering, Infrequent Access, Glacier, etc.

- **Lifecycle Management**  
  Define rules to automatically transition or expire objects as they age.

- **Versioning**  
  Keep every version of an object (including deletes) for recovery and auditing.

- **Event Notifications**  
  Trigger Lambda functions, SQS/SNS messages, or workflows on object events.

## 🚀 Hands-On: Working with Your S3 Bucket

In this lab you’ll learn to:
1. Initialize a Terraform project for S3.  
2. Declare and validate bucket names.  
3. Apply, update, and destroy your bucket with Terraform.

_All examples assume the AWS provider is already configured._