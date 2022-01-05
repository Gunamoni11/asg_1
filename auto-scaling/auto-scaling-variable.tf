#LAUNCH CONFIGURATION VARIABLES

variable "region" {
  default = "us-east-2"
}

variable "key-name" {
  default = "power"
}

variable "public-key-file-name" {
  default = "terra.pub"
}

variable "launch-configuration-name" {
  default = "asg"
}

variable "image-id" {
  default = "ami-0fb653ca2d3203ac1"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "launch-configuration-security-groups" {
  default = "sg-0244e3f85210cc582"
}

variable "launch-configuration-public-key-name" {
  default = "terra"
}


#AUTO-SCALING VARIABLES

variable "autoscaling-group-name" {
  default = "asg"
}

variable "max-size" {
  default = "2"
}

variable "min-size" {
  default = "1"
}

variable "health-check-grace-period" {
  default = "30"
}

variable "desired-capacity" {
  default = "1"
}

variable "vpc-zone-identifier" {
  type = "list"
}

variable "health-check-type" {
  default = "100"
}

variable "tag-key" {
  default = "terraf"
}

variable "tag-value" {
  default = "terra1"
}

#Application Load Balancer Target Group
variable "alb-tg-name" {
  default = ""
}
variable "target-group-port" {
  default = "0"
}

variable "target-group-protocol" {
  default = "0"
}

variable "vpc-id" {
  default = "vpc-6014600b"
}
