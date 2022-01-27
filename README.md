# DevOps-The-Hard-Way-GCP

This tutorial contains a full, real-world solution for setting up an environment that is using DevOps technologies and practices for deploying apps and cloud services/cloud infrastructure to GCP.


The repository contains free labs, documentation, diagrams, and docs for setting up an entire workflow and DevOps environment from a real-world perspective in GCP.

## DevOps Scenario
The scenario that you're currently facing is you work in an organization that is very monolithic. There is a ton of bare metal, virtualization, manual deployments of applications, and **old school** practices based on the current teams knowledge of IT.

You're brought in to the company and team to make things more modern so the organization can not only succeed, but stay ahead of their competition. Management now understands the needs and complexity that comes with staying ahead of their competition and they know that they need to. Otherwise, the organization will fall...

## DevOps Solution
The solution is to deploy the Uber API for the sign-up page. Currently this solution is sitting on a bunch of baremetal, but it's time to sprinkle a little DevOps on it.

![](images/uber.png)

As a DevOps Engineer, you're more or less (most likely) not writing the app, but instead, deploying it. That's why you're not writing your own app in this tutorial.

*Full Disclosure* - I did have to edit this app a bit from Uber to make it compatible with Python3. You can find the repo here:

https://github.com/AdminTurnedDevOps/Python-Sample-Application

## Technology Details
You will be using the following technologies and platforms to set up a DevOps environment.

1. GCP
    - GCP will be used to host the application, cloud infrastructure, and any other services we may need to ensure the Uber app is deployed properly.
2. GitHub
    - To store the application and infrastructure/automation code
3. Python
    - Python will be used for the Uber app (it is written in Python) and some automation efforts that aren't in Terraform.
4. Terraform
   - Create an GCS bucket to store Terraform State files
   - Create an GCP ECR repository with Terraform
   - Create an GKE cluster
5. Docker
   - Create a Docker image
   - Store the Docker image in GCP Artifact Registry
6. Kubernetes
   - To run the Docker image that's created for the containerized Uber app. Kubernetes, in this case, EKS, will be used to orchestrate the container.
7. CI/CD
   - Use GitHub Actions to create an GKE Cluster
8. Automated testing
    - Testing Terraform code with Checkov

## Labs
1. [Prerequisites](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/prerequisites.md)
2. VPC - When running EKS, it requires specific networking. Because all environments will most likely be different, there's a CloudFormation template for this exact purpose.
   - [Create VPC](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/tree/main/VPC)
3. GCP:
    - [Configure credentials to access GCP at a programmatic level](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/GCP/1-Configure-Credentials-To-Access-GCP.md)
4. Terraform - The purpose of the Terraform section is to create all of the GCP cloud services you'll need from an environment/infrastructure perspective to run the Uber application.
    - [Create S3 Bucket To Store TFSTATE Files](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Terraform-GCP-Services-Creation/1-Create-S3-Bucket-To-Store-TFSTATE-Files.md)
    - [Create an Elastic Container Registry](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Terraform-GCP-Services-Creation/2-Create-ECR.md)
    - [Create An EKS Cluster IAM Role, And Policy For EKS](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Terraform-GCP-Services-Creation/3-Create-EKS-Cluster-IAM-Role-And-Policy.md)
    - [Create An EKS Cluster](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Terraform-GCP-Services-Creation/3-Create-EKS-Cluster-IAM-Role-And-Policy.md)
5. Docker - The purpose of the Docker section is to create a Docker image from the app that the organization is running on-prem (the uber app), containerize it, and store the container inside of a container repository. For the container repo, you'll use GCP ECR.
    - [Create The Docker Image](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Docker/1-Create-Docker-Image.md)
    - [Log Into GCP ECR Repository](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Docker/Push%20Image%20To%20ECR.md)
6. Kubernetes - The purpose of the Kubernetes section is to connect to EKS locally and to write the Kubernetes manifest to deploy the Python Uber app.
    - [Connect To EKS From The Terminal](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/kubernetes_manifest/1-Connect-To-EKS.md)
    - [Create A Kubernetes Manifest](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/kubernetes_manifest/2-Create-Kubernetes-Manifest.md)
7. Automated Testing - The purpose of the Automation Testing section is to ensure that all of the Terraform code is performing as it should be from a policy, security, and static code analysis perspective.
    - [Install And Run Checkov](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Terraform-Static-Code-Analysis/1-Checkov-For-Terraform.md)
8. CICD - The purpose of this section is to automatically create an EKS cluster with CICD using GitHub Actions
    - [Create a GitHub Actions CICD pipeline](https://github.com/AdminTurnedDevOps/DevOps-The-Hard-Way-GCP/blob/main/Terraform-GCP-Services-Creation/4-Run-CICD-For-EKS-Cluster.md)
