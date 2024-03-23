variable "cluster_name" {
  type        = string
  description = "Name of the cluster"
  validation {
    condition     = length(var.cluster_name) > 0
    error_message = "cluster_name must not be null"
  }
}

variable "tags" {
  type        = map(string)
  description = "tags for the cluster resources" 
}

variable "cluster_version" {
    type = string
    default = "1.29" 
}

variable "cluster_endpoint_private_access" {
    type = bool
    default = true
}

variable "cluster_endpoint_public_access" {
    type = bool
    default = true
}

variable "vpc_id" {
    type = string
     validation {
    condition     = length(var.vpc_id) > 0
    error_message = "vpc_id must not be null"
  }
}

variable "private_subnet_ids" {
    type = list(string)
     validation {
    condition     = length(var.private_subnet_ids) > 0
    error_message = "private_subnet_ids must not be null"
  }
}

variable "ami_type" {
    type = string
    default = "AL2_x86_64"
}

variable "disk_size" {
    type = string
    default = "50"
}

variable "instance_types" {
    type = list(string)
    default = ["t3.medium"]
}

variable "capacity_type" {
    type = string
    default = "SPOT"
}

variable "min_size" {
    type = number
    default = 1
}

variable "max_size" {
    type = number
    default = 3
}

variable "desired_size" {
    type = number
    default = 1
}

variable "region" {
    type = string
    default = "eu-north-1"
  
}
