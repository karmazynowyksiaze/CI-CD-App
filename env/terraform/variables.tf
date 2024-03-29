variable "instance_count" {
  default = "2"
}

variable "instance_tags" {
  type    = list(string)
  default = ["JenkinsServer", "HTTPServer"]
}

variable "ami" {
  type    = string
  default = "ami-0914547665e6a707c" #Jammy Jellyfish 22.04 LTS
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}