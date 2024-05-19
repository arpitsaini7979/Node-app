# DevOps Project: CI/CD Pipeline for NodeJS Application

## Overview
This project demonstrates a complete CI/CD pipeline for deploying a NodeJS application using GitHub Actions. The pipeline is designed to automate the build, test, and deployment processes, leveraging Docker for containerization and Terraform for infrastructure as code (IaC).

## Features

- **CI/CD Pipeline**: Automated workflows for continuous integration and continuous deployment using GitHub Actions.
- **Docker**: Containerization of the NodeJS application for consistent environments across development, testing, and production.
- **Docker Hub**: Automatic pushing of Docker images to Docker Hub.
- **Terraform**: Infrastructure as code to manage and provision cloud resources.
- **Scalability**: Easily scalable infrastructure and deployment process.

## Prerequisites

Before you begin, ensure you have the following installed:

- [NodeJS](https://nodejs.org/)
- [Docker](https://www.docker.com/get-started)
- [Terraform](https://www.terraform.io/)
- [Git](https://git-scm.com/)
- [GitHub Account](https://github.com/)

## Getting Started

### Clone the Repository


```bash
git clone https://github.com/arpitsaini7979/Node-app.git
```

### Navigate to the directory of the App

```bash
cd NODEJS_1
```

### Navigate to the app directory and install the dependencies:

To installing the dependancy of NPM you must have to visit the [NPM installation documentation](https://github.com/azfar-2/myself/blob/main/Install_NPM.md)

## Docker Setup

###Build the Docker image for the NodeJS application:

```bash
docker build -t yourusername/node-app:latest .
```

###Push the Docker image to Docker Hub:

```bash
docker login
docker push yourusername/node-app:latest
```

## Terraform Setup
### Navigate to the `terraform` directory and initialize Terraform:

```bash
cd ../Terraform
```

```bash
terraform init
```

### Preview the infrastructure changes:
```
terraform plan
```

### Apply the infrastructure changes:
```bash
terraform apply --auto-approve
```

---

# GitHub Actions CI/CD Pipeline

This project uses GitHub Actions for CI/CD. The workflow is defined in the `.github/workflows/main.yml` file.

## Workflow Steps

1. **Checkout Code**: Retrieves the latest code from the repository.
2. **Set Up Node**: Installs the required NodeJS version.
3. **Run Tests**: Executes the test suite to ensure the application is working correctly.
4. **Build Docker Image**: Creates a Docker image of the NodeJS application.
5. **Push Docker Image**: Pushes
6. **Deploy with Terraform**: Applies the Terraform configuration to provision and deploy the infrastructure.


## Running the Workflow

The workflow is triggered on every push to the main branch. To manually trigger the workflow, navigate to the "Actions" tab in your GitHub repository and select the desired workflow.



