variable "project" {}
variable "env" {}
variable "location" {}
variable "address_space" {}
variable "subnets" {
  type = map(string)
}
variable "resource_group_name" {}
