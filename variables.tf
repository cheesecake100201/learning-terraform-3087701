variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter"{
  type = object({
    name = string
    owner = string
  })
  description = "Name filter for ami"
  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
  
}

variable "environment" {
  description = "Development Environment"

  type = object({
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "min_size" {
  description            = "Minimum number of intances in asg"
  default                = 1
}

variable "max_size" {
  description           = "Maximum number of instances in asg"
  default               = 2
}
