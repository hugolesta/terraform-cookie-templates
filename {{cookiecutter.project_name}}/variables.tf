variable "env" {
  description = "Map containing all the environment configuration"
  type        = map(string)
  default     = {}
}

variable "vpc" {
  description = "Map containing all attributes of the VPC"
}

