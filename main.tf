resource "aws_vpc" "rs_aws_vpc" {
    cidr_block         = "192.168.0.0/16"
    enable_dns_support = true
    tags = {
        Name = "tags_rs_aws_vpc"
    }
}

resource "aws_subnet" "rs_aws_subnet_a" {
    vpc_id               = aws_vpc.rs_aws_vpc.id
    cidr_block           = "192.168.0.0/24"
    availability_zone    = "us-west-2a"
    tags = {
        Name = "tags_rs_aws_subnet_a"
    }
}

resource "aws_subnet" "rs_aws_subnet_b" {
    vpc_id               = aws_vpc.rs_aws_vpc.id
    cidr_block           = "192.168.1.0/24"
    availability_zone    = "us-west-2b"
    tags = {
        Name = "tags_rs_aws_subnet_b"
    }
}

resource "aws_subnet" "rs_aws_subnet_c" {
    vpc_id               = aws_vpc.rs_aws_vpc.id
    cidr_block           = "192.168.2.0/24"
    availability_zone    = "us-west-2c"
    tags = {
        Name = "tags_rs_aws_subnet_c"
    }
}

resource "aws_subnet" "rs1_aws_subnet_a" {
    vpc_id               = aws_vpc.rs_aws_vpc.id
    cidr_block           = "192.168.3.0/24"
    availability_zone    = "us-west-2a"
    tags = {
        Name = "tags_rs1_aws_subnet_a"
    }
}