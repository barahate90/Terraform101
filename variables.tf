variable "profile"{
    default = "Terraform"
}

variable "region"{
    default = "us-east-1"
}

variable "amis"{
    type = "map"
    default = {
    "us-east-1" = "ami-04b9e92b5572fa0d1"
    "us-west-1" = "ami-00068cd7555f543d5"    
    }
    
}

variable "instance-type"{
    default = "t2.micro"
}