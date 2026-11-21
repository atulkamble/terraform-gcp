```
terraform - GCP 

GCP - Google Cloud Platforms - Google - Public Cloud

0. Create project-id 
1. Enable Billing Account - QR Scan - Google Pay - Account Select - Mandate ON 
2. Associate Billing account with project id

git clone https://github.com/atulkamble/terraform-gcp.git
cd /terraform-gcp

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.12.0"
    }
  }
}

provider "google" {
  project = "ethans-515409"
  region  = "us-east1"
}

resource "google_storage_bucket" "practicebucket" {
  name     = "practicebucket-ethans"
  location = "US"
}


// install gcloud - mac
curl https://sdk.cloud.google.com | bash

gcloud init
gcloud config list
gcloud config set project PROJECT_ID
gcloud components update
gcloud auth login

gcloud --version
gcloud login 
gcloud auth application-default login
terraform init 
terraform init -upgrade
terraform validate
terraform fmt 
terraform plan
terraform apply
```
# Basic GCP with Terraform

Small Terraform examples for learning Google Cloud resources:

1. **Storage bucket** — the root folder example
2. **VPC network** — `examples/vpc`
3. **Virtual machine** — `examples/vm` (may incur charges)

## Prerequisites

- Google Cloud project with billing enabled
- Terraform and Google Cloud CLI installed

Authenticate:

```bash
gcloud auth application-default login
```

Replace `YOUR_PROJECT_ID` in the example you want to run. Run one example folder at a time.

## Run an example

From the selected folder:

```bash
terraform init
terraform plan
terraform apply
```

Type `yes` to create the resource.

## Delete resources

From the same folder:

```bash
terraform destroy
```

The VM example uses a small machine type, but it can still incur charges. Destroy it when you finish.
