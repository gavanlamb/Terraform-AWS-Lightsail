variable "company" {
  type = string
  description = "Company name"
}
variable "environment" {
  type = string
  description = "Environment name"
}
variable "name" {
  type = string
  description = "Name"
}
variable "service" {
  type = string
  description = "Service name"
}
variable "key-pair-name" {
  type = string
  description = "Name of the key pair"
}
variable "instance-name" {
  type = string
  description = "Name of the lighsail instance"
}
variable "availability-zone" {
  type = string
  description = "Availability zone of the lighsail instance"
}
variable "blueprint-id" {
  type = string
  description = "The ID for a virtual private server image"
}
variable "bundle-id" {
  type = string
  description = "The bundle of specification information"
}
variable "user-data" {
  type = string
  description = "Launch script to configure server with additional user data"
}
variable "tags" {
  description = "Tags for the certificate resources"
  type        = "map"
  default     = {}
}
