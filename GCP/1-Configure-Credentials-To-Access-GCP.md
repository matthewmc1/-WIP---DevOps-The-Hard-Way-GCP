# Configure Credentials To Access GCP At The Programmatic Level


The purpse of this lab is to configure IAM credentials on your local computer so that you can access GCP at a programmatic level (SDKs, CLI, Terraform, etc.)

## Install gcloud CLI  
1. [Cloud SDK](https://cloud.google.com/sdk/docs/install)

## Billing Account

You should have a billing account assosicated to your account prior to starting this, if you have never used GCP before this will also entitle you to credits on sign-up to use this project but make sure to destroy after so that you are not charged for this.

## Login & Create Project
1. Running locally to create, first run `gcloud auth application-default login` - this will login using the Google sign-in option.
2. Set your default project for running `gcloud projects create devops-the-hardway`
3. Confirm project is created `gcloud projects list`
4. Link billing account to the project `gcloud beta billing projects link devops-the-hardway --billing-account {BILLING-ID}`
4. Set default project `gcloud config set project devops-the-hardway`

