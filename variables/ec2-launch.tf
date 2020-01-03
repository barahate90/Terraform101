#Interpolation:
# you can interpolate other values. These interpolations are wrapped in ${}, such as ${var.foo}.
# You can escape interpolation with double dollar signs: $${foo} will be rendered as a literal ${foo}.

provider "aws" {
    profile = "${var.profile}" 
    region  = "${var.region}"
}

#The values defined in the variables.tf files can be used in the Terraform plans to avoid hard-coding parameters
# ex: "${var.instance-type}"
resource "aws_instance" "demoTerraform"{
    ami = "${lookup(var.amis,var.region)}"
    instance_type = "${var.instance-type}"

    tags = {
        Name = "demoTerraform"
    }
}

