terraform {
  backend "s3" {
    bucket         = "state-infra-pragma-kris"
    key            = "prod/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform_state_lock"
    encrypt        = true
  } 
}
