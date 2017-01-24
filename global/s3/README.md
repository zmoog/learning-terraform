# Management

This is the management part of the infrastructure. Tipically you'll find here 
the S3 bucket to share the Terraform state and so on.

## Remote State

```bash
$ terraform remote config \
    -backend=s3 \
    -backend-config="bucket=bodrilli-terraform-up-and-running-state" \
    -backend-config="key=global/s3/terraform.tfstate" \
    -backend-config="region=eu-central-1" \
    -backend-config="encrypt=true"

Remote state management enabled
Remote state configured and pulled.

```

## Passwords

```bash
> export TF_VAR_db_password="(YOUR_DB_PASSWORD)"
> terragrunt plan
```