variable "tf_state_bucket" {
  description = "The name of the S3 bucket to store the Terraform state file"
  default     = "devops-recipe-api-s3-tf-state"
}

variable "tf_state_lock_table" {
  description = "The name of the DynamoDB table to store the Terraform state lock"
  default     = "devops-recipe-api-tf-lock"
}

variable "project" {
  description = "The name of the project for tagging resources"
  default     = "recipe-app-api"

}

variable "contact" {
  description = "The contact name for tagging resources"
  default     = "Devblaise@example.com"

}
