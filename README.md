# Basic GCP with Terraform

A minimal Terraform example that creates one Google Cloud Storage bucket.

## Prerequisites

- A Google Cloud project with billing enabled
- Terraform installed
- Google Cloud CLI installed

Authenticate with Google Cloud:

```bash
gcloud auth application-default login
```

## Configure

In `main.tf`, replace:

- `YOUR_PROJECT_ID` with your Google Cloud project ID
- `YOUR_UNIQUE_BUCKET_NAME` with a globally unique bucket name

## Run

```bash
terraform init
terraform plan
terraform apply
```

Type `yes` when Terraform asks to create the bucket.

## Clean up

Delete the bucket and Terraform-managed resources:

```bash
terraform destroy
```
