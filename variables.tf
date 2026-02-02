variable "instance_type" {
  type = string
  description = "The type of instance to launch"
  default = "t3.micro"
}
variable "subnet_id" {
  type = string
  description = "The subnet ID to use for the instance"

  validation {
    condition = length(regexall("^subnet-[\\w]+$", var.subnet_id)) == 1
    error_message = "The subnet_id must match the pattern ^subnet-[\\w]+$"
  }
}