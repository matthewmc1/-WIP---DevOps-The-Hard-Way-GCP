# Create an Google Cloud Storage bucket to store Terraform state files

In this lab you will create an Google Cloud Storage bucket that will be used to store Terraform state files

## Create The Terraform Configurations

1. You can find the Terraform configuration for the Google Cloud Storage bucket [here](https://github.com/mmcgibbon1/DevOps-The-Hard-Way-GCP/tree/trunk/Terraform-GCP-Services-Creation/terraform-state-gcs-bucket). The Terraform configuration files are used to create an Google Cloud Storage bucket that will store your TFSTATE.

The Terraform `main.tf` will do a few things:
- Create the Google Cloud Storage bucket in the `EU` region for regional availability
- Ensure that version enabling is set to `True`


2. Create the bucket by running the following:
- `terraform init` - To initialize the working directory and pull down the provider
- `terraform plan -out gcs.tfplan` - To go through a "check" and confirm the configurations are valid and create a plan file based on the name provided.
- `terraform apply gcs.tfplan` - To create the resource

3. Sample output from `terraform plan -out gcs.tfplan`

```
  # google_storage_bucket.terraform_state will be created
  + resource "google_storage_bucket" "terraform_state" {
      + force_destroy               = false
      + id                          = (known after apply)
      + location                    = "EU"
      + name                        = "terraform-state-devopsthehardway-gcp"
      + project                     = (known after apply)
      + self_link                   = (known after apply)
      + storage_class               = "STANDARD"
      + uniform_bucket_level_access = true
      + url                         = (known after apply)

      + versioning {
          + enabled = true
        }
    }
```
