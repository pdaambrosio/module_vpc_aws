variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
  default     = "instance_vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block of the VPC"
  default     = "10.0.0.0/16"
}


variable "map_public_ip_on_launch" {
  type        = bool
  description = "Whether resources created in the VPC get public IP addresses"
  default     = false
}

variable "enable_dns_support" {
  type        = bool
  description = "Whether DNS support is enabled"
  default     = true
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Whether DNS hostnames are enabled"
  default     = true
}

variable "extra_tags" {
  type        = map(any)
  default     = {}
  description = "extra tags to add to the instance"
}
