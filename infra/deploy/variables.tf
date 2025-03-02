variable "prefix" {
  description = "The prefix to use for all resources"
  default     = "raa"
}

variable "project" {
  description = "The name of the project for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "The contact email for tagging resources"
  default     = "devblaise@example.com"
}
