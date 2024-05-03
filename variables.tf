variable "cloud_id" {
  description = "The ID of the cloud under which to deploy the resources"
}

variable "folder_id" {
  description = "The ID of the folder under which to deploy the resources"
}

variable "default_zone" {
  description = "The default zone where resources will be deployed"
}

variable "vpc_name" {
  description = "Name of the VPC"
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
}

variable "private_subnet_name" {
  description = "Name of the private subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "service_account_id" {
  description = "valueable account ID"
}

variable "image_path" {
  description = "valueable image path"
}

variable "region_id" {
  description = "valueable region ID"
}
