variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}
variable "instace_type" {
    type = string
    default = "t3.micro"
}
variable "tag" {
    type = string
    default = "Terraform"
}
