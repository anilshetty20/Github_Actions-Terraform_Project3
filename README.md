# Github_Actions-Terraform_Project3
Deploy Static Website to AWS S3 using GitHub_Actions and Terraform

Create GitHub Secrets

In your repository settings add:

AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION

These credentials allow GitHub Actions to access AWS.


Execution Steps

Push code:

git add .
git commit -m "terraform s3 project"
git push origin main

Pipeline will run:

Step 1 → Checkout code
Step 2 → Configure AWS
Step 3 → Terraform init
Step 4 → Terraform apply
Step 5 → Create S3 bucket
Step 6 → Upload website


Access Website using the s3 static webiste url
