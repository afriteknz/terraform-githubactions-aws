# Terraform AWS Deployment with GitHub Actions CI/CD

This repository contains Terraform code demonstrating automated deployment to AWS using GitHub Actions CI/CD pipelines. The CI/CD pipelines are triggered by pull requests and include automated tests using Checkov for infrastructure as code security and compliance checks.

## Overview

This repository showcases how to use Terraform to provision infrastructure on AWS and integrate it with GitHub Actions for continuous integration and continuous deployment (CI/CD). The GitHub Actions workflows are configured to automatically execute Terraform scripts upon pull request creation or update.

## Features

- Automated deployment of infrastructure to AWS using Terraform.
- GitHub Actions CI/CD pipelines for automated testing and deployment.
- Pull request triggers for CI/CD pipelines.
- Automated tests using Checkov for infrastructure as code security and compliance.

## Requirements

- AWS account with appropriate permissions.
- GitHub repository for hosting Terraform code.
- Terraform installed on your local machine.
- GitHub Actions configured for the repository.

## Getting Started

1. Clone this repository to your local machine:

        git clone https://github.com/your-username/terraform-aws-deployment.git
        cd terraform-aws-deployment

2. Configure your AWS credentials

 #### Configure your AWS credentials as below only for testing


            export AWS_ACCESS_KEY_ID="your-access-key-id"
            export AWS_SECRET_ACCESS_KEY="your-secret-access-key"

 #### Configure your AWS credentials using GitHub Actions secrets

To securely configure your AWS credentials for use in GitHub Actions workflows, you can utilize GitHub Secrets. Follow these steps to set up your AWS credentials as secrets:

1. **Generate AWS Access Key and Secret Key**: Log in to your AWS Management Console, navigate to the IAM (Identity and Access Management) dashboard, and create a new IAM user with programmatic access. Once created, note down the Access Key ID and Secret Access Key.

2. **Add GitHub Secrets**: In your GitHub repository, go to the "Settings" tab and select "Secrets" from the sidebar. Click on "New repository secret" and add the following secrets:
   - `AWS_ACCESS_KEY_ID`: Set this to the Access Key ID generated in step 1.
   - `AWS_SECRET_ACCESS_KEY`: Set this to the Secret Access Key generated in step 1.

3. **Update GitHub Actions Workflow**: Modify your GitHub Actions workflow (`.github/workflows/main.yml`) to utilize these secrets. Here's an example of how you can use these secrets in your workflow:

```yaml
name: Terraform AWS Deployment

on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master

jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2

      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v1
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: us-west-2

      # Add more steps for Terraform deployment...


3. Customize the Terraform configuration files as needed for your infrastructure requirements.
4. Commit and push your changes to GitHub:

        git add .
        git commit -m "Update Terraform configuration"
        git push origin master


5. Create a pull request in GitHub to trigger the CI/CD pipelines.

6. Monitor the GitHub Actions workflows for automated testing and deployment.


#### Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

#### License

This project is licensed under the MIT License - see the LICENSE file for details.


    This README provides an overview of your repository, including its purpose, features, requirements, getting started guide, contribution guidelines, and license information. Adjust it as needed to fit your specific project details and preferences.
