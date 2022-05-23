# 2FTest
### Access
[Hit the load balancer](http://2ftest-dev-alb-860783086.us-east-1.elb.amazonaws.com)

### To run
##### From scratch
- Generate IAM key
- Git clone repo
- `terraform init` + export your key variables
- `terraform plan` and `terraform apply`, the task won't work until the image exists in ECR
- `docker build -t 2f .` from the `app` directory
- Log into ECR `aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com`
- Tag your image `docker tag 2f $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/2ftest:latest`
- Push to ECR `docker push $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/2ftest:latest`
- Verify the task is running in ECS, if not you can restart it

##### Once built
- Run Terraform locally to update it
- Updating the app will automatically build and deploy the image once it's pushed to main,
  but the secrets will have to be updated to use a different account

### Assumptions
- Quick and dirty, I assumed simple is better
- ECS would be fine and faster than EKS
- Building an architecture diagram would be easy, I was wrong
