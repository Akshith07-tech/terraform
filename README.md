project:
  title: "🚀 Terraform AWS Projects — EC2 & Infrastructure Modules"
  description: |
    This repository contains two Terraform-based AWS projects for learning and practice:
      1. Deploying an EC2 instance with Nginx.
      2. Building a modular AWS infrastructure including EC2, S3, and DynamoDB.

repository_structure: |
  terraform/
  └── ec2/
      ├── ec2.tf
      ├── variables.tf
      ├── output.tf
      ├── terraform.tf
      ├── providers.tf
      ├── install_nginx.sh
      ├── .gitignore
      └── README.md

  terraform-modules/
  └── infra-app/
      ├── ec2.tf
      ├── s3.tf
      ├── dynamodb.tf
      ├── variables.tf
      ├── providers.tf
      ├── terraform.tf
      └── main.tf

projects:
  - name: "Project 1 — EC2 with Nginx"
    description: "Provisions an EC2 instance on AWS and installs Nginx using a startup script."
    steps_to_run: |
      cd terraform/ec2
      terraform init
      terraform validate
      terraform plan
      terraform apply -auto-approve

    connect_to_instance: |
      ssh -i terra-key-ec2 ubuntu@<public-ip>

    verify_nginx: |
      sudo systemctl status nginx
      # Or open http://<public-ip> in your browser to see the Nginx welcome page 🎉

  - name: "Project 2 — Modular Infrastructure (Infra-App)"
    description: "Demonstrates modular Terraform design for reusable AWS infrastructure components."
    includes:
      - EC2 instance
      - S3 bucket
      - DynamoDB table
      - Environment-based setup (dev, stg, prd)
    steps_to_run: |
      cd terraform-modules/infra-app
      terraform init
      terraform validate
      terraform plan
      terraform apply -auto-approve
    features: |
      - Uses variables for environment, instance type, and naming.
      - Dynamically adds random suffixes to S3 bucket names to avoid global conflicts.

cleanup:
  command: |
    terraform destroy -auto-approve
  note: "Always destroy unused resources to avoid AWS costs."

tech_stack:
  - Terraform — Infrastructure as Code
  - AWS EC2 — Virtual Server Instances
  - AWS S3 — Object Storage
  - AWS DynamoDB — NoSQL Database
  - Bash / Shell — Provisioning and automation

notes: |
  - Do NOT push sensitive files like:
      .terraform/
      terraform.tfstate
      terraform.tfstate.backup
      terra-key-ec2
  - These are excluded using .gitignore.

author:
  name: "Akshith"
  description: "Terraform + AWS automation and modular infrastructure demonstration 🌍"

support:
  - "⭐ Give it a star on GitHub"
  - "🍴 Fork it to experiment"
  - "💬 Share feedback to improve further"

