variable "region" {
    type = string
}
variable "cidr_block" {
    type = string
}
variable "subnet_tags" {
    type = list(string)

}
variable "subnet_azs" {
    type = list(string)
  
}