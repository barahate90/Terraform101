provider "aws" {
    profile = "${var.profile}"
    region  = "${var.region}"
}

resource "aws_instance" "demoTerraform"{
    ami = "${lookup(var.amis,var.region)}"
    instance_type = "${var.instance-type}"

    tags = {
        Name = "demoTerraform"
    }
}