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
