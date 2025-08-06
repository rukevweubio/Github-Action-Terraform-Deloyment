# Fullstack AWS Deployment: Node.js & Python Flask

This project demonstrates deploying both a Node.js (Express) and Python Flask web application to AWS using Docker, GitHub Actions, Terraform, and Ansible.

## Structure

- `app/nodejs/` – Node.js Express app & Dockerfile
- `app/flask/` – Python Flask app & Dockerfile
- `.github/workflows/` – GitHub Actions CI/CD pipeline
- `terraform/` – Infrastructure as Code for AWS
- `ansible/` – Configuration management for EC2

## Workflow

1. **Build & Push Docker Images**
   - GitHub Actions builds Docker images for both apps and pushes to Docker Hub.
2. **Provision AWS Infrastructure**
   - Terraform provisions EC2 instances and networking.
3. **Configure with Ansible**
   - Ansible installs Docker and runs both containers on the EC2 instances.

## Setup

1. Copy `.env.example` to `.env` and fill in your credentials.
2. Set GitHub repository secrets for Docker Hub credentials.
3. Update `terraform/variables.tf` with your desired AWS region and AMI.
4. After `terraform apply`, add your EC2 public IPs to `ansible/inventory.ini`.

## Commands

- Build & push images: (handled by GitHub Actions)
- Terraform:
  ```bash
  cd terraform
  terraform init
  terraform apply
  ```
- Ansible:
  ```bash
  cd ansible
  ansible-playbook -i inventory.ini playbook.yml
  ```

---

**Note:**
- You must have Docker Hub, AWS, and GitHub accounts.
- The AMI must support Ubuntu and allow SSH for Ansible.
# Github-Github-Terraform-Deloyment
this project deploy  a web application to  ec2 with ansible and used terraform to  build the infrastrusture
