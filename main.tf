# main.tf

resource "null_resource" "foo" {
  triggers = {
    foo = var.project
  }
}

resource "aws_instance" "skedida-instance-1_SM78z4n9M7Lk2ncR" {
  ami                    = data.aws_ami.skedida-instance-1_SM78z4n9M7Lk2ncR.id
  instance_type          = "a1.medium"
  key_name               = "skedida-instance-1_SM78z4n9M7Lk2ncR"
  vpc_security_group_ids = [aws_security_group.skedida-instance-1_SM78z4n9M7Lk2ncR_0.id]

  ebs_block_device {
    device_name = "my-ebs"
    volume_type = "gp3"
    volume_size = 5
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
}

resource "aws_key_pair" "skedida-instance-1_SM78z4n9M7Lk2ncR" {
  key_name   = "skedida-instance-1_SM78z4n9M7Lk2ncR"
  public_key = "abcd"
}

resource "aws_security_group" "skedida-instance-1_SM78z4n9M7Lk2ncR_0" {
  name        = "Allow Ingress"
  description = "Allow ingress from specific CIDR"

  ingress {
    description = "inbound"
    from_port   = 998
    to_port     = 997
    protocol    = "icmp"
    cidr_blocks = []
  }
}

data "aws_ami" "skedida-instance-1_SM78z4n9M7Lk2ncR" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "test_u2VrZYmt2eUxaZnL" {
  ami                    = data.aws_ami.test_u2VrZYmt2eUxaZnL.id
  instance_type          = "c3.xlarge"
  key_name               = "test_u2VrZYmt2eUxaZnL"
  vpc_security_group_ids = [aws_security_group.test_u2VrZYmt2eUxaZnL_0.id]

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
}

resource "aws_key_pair" "test_u2VrZYmt2eUxaZnL" {
  key_name   = "test_u2VrZYmt2eUxaZnL"
  public_key = "test"
}

resource "aws_security_group" "test_u2VrZYmt2eUxaZnL_0" {
  name        = "Allow Ingress"
  description = "Allow ingress from specific CIDR"

  ingress {
    description = "test"
    from_port   = 2
    to_port     = 3
    protocol    = "udp"
    cidr_blocks = []
  }
}

data "aws_ami" "test_u2VrZYmt2eUxaZnL" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
