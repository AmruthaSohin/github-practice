# AWS Cost Reporting Terraform Setup

This Terraform project creates infrastructure to generate AWS cost reports using:
- AWS Cost and Usage Report (CUR)
- Amazon S3
- Amazon Athena

## Steps

1. Install Terraform
2. Configure AWS CLI

```
aws configure
```

3. Initialize Terraform

```
terraform init
```

4. Copy variables

```
cp terraform.tfvars.example terraform.tfvars
```

Edit the bucket name.

5. Plan deployment

```
terraform plan
```

6. Deploy

```
terraform apply
```

## Query Cost Per Project (Athena)

Example SQL:

```
SELECT
resource_tags_user_project AS project,
SUM(line_item_unblended_cost) AS monthly_cost
FROM aws_cost_reporting
GROUP BY resource_tags_user_project;
```

Cost reports will start appearing in the S3 bucket within 24 hours.