# Terraform + GitHub Actions CI/CD Lab

## 📌 Overview

This project demonstrates how to automate AWS infrastructure deployment using **Terraform** integrated with **GitHub Actions CI/CD pipelines**.

The pipeline automatically validates and plans infrastructure changes whenever code is pushed to the repository, following Infrastructure as Code (IaC) and DevOps best practices.

---

## 🛠️ Technologies Used

- AWS (EC2)
- Terraform (HCL)
- GitHub Actions (CI/CD)
- Git & GitHub
- Linux

---

## 🧱 Infrastructure Provisioned

- EC2 Instance (Amazon Linux 2)
- Configurable instance type
- Region parameterization
- Outputs for instance ID and public IP

---

## 📂 Project Structure

terraform-github-actions-lab/
├── main.tf
├── variables.tf
├── outputs.tf
├── .github/
│ └── workflows/
│ └── terraform.yml
└── README.md



---

## 🚀 CI/CD Workflow

When code is pushed to the `main` branch:

1. GitHub Actions triggers automatically
2. Terraform initializes the working directory
3. Terraform validates configuration syntax
4. Terraform generates an execution plan

This ensures infrastructure changes are validated before deployment.

---

## 🔐 Secure Credential Management

AWS credentials are stored securely using GitHub repository secrets:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

Credentials are not stored in code, following security best practices.

---

## 🧪 Commands Executed in Pipeline

The workflow runs:

```bash
terraform init
terraform validate
terraform plan
