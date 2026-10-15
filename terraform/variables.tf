variable "aws_region" {
  description = "AWS region for MinePulse infrastructure"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "minepulse-eks"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
