variable "aws_profile" {
  description = "Set this variable if you use another profile besides the default awscli profile called 'default'."
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "Set this variable if you use another aws region."
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Vpc name that would be created for your cluster"
  type        = string
  default     = "EKS_vpc"
}

variable "aws_availability_zones" {
  description = "AWS availability zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cidr" {
  description = "Cird block for your VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "private subnets to create, need to have 1 for each AZ"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "public subnets to create, need to have 1 for each AZ"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "cluster_version" {
  description = "kubernetes cluster version"
  type        = string
  default     = "1.27"
}

variable "intra_subnets" {
  description = ""
  default     = ["10.0.7.0/24", "10.0.8.0/24", "10.0.9.0/24"]
}
