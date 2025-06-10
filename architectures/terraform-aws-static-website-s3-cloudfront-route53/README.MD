# Terraform Project: AWS Static Website on S3 + CloudFront + Route 53

## Overview  
This repository contains Terraform configurations to deploy a fully-featured static website on AWS, comprised of:  
1. **S3** – General-purpose bucket configured for static website hosting  
2. **CloudFront** – CDN distribution (with Origin Access Identity) for HTTPS, caching, and edge delivery  
3. **Route 53** – DNS records pointing your custom domain to the CloudFront distribution  

Designed for cloud architects, this “flat” layout groups related resources into separate `.tf` files—no modules—so you can trace each piece of the architecture in isolation.

---

## Architecture  

IMAGE SOON