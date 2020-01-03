# Created variable called profile with default value Terraform 
variable "profile"{
    default = "Terraform"
}

variable "region"{
    default = "us-east-1"
}

#Within the block body (between { }) is configuration for the variable, which accepts the following arguments:
#type (Optional) - If set this defines the type of the variable. Valid values are string, list, and map. 
#		   If this field is omitted, the variable type will be inferred based on default.
#		   If no default is provided, the type is assumed to be string.
#
#default (Optional) - This sets a default value for the variable. If no default is provided, 
#		      Terraform will raise an error if a value is not provided by the caller. 
#		      The default value can be of any of the supported data types, as described below. 
# 		      If type is also set, the given value must be of the specified type.
#description (Optional) - A human-friendly description for the variable. 
#		          This is primarily for documentation for users using your Terraform configuration.
#		          When a module is published in Terraform Registry, the given description is shown as part of the documentation.
#Ref:https://www.terraform.io/docs/configuration-0-11/variables.html

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
