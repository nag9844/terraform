terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }
}

provider aws {
    region = "ap-south-1"
}

resource "aws_instance" "demo_ec2" {
    ami = ""
    instance_type = ""
    count = 3
    
    tags = {
      name = "demo_ec2-${count.index}"
    }
}