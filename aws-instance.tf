resource "aws_instance" "ubuntu" {
  ami           = "${lookup(var.ami_id, var.region)}"
  instance_type = "t2.micro"

  tags = {
    Name = "server-1"
  }
}


resource "aws_instance" "ec2-user" {
  ami           = "${lookup(var.ami_id, var.region)}"
  instance_type = "t2.micro"

  tags = {
    Name = "server-2"
  }
}


resource "aws_instance" "redhat" {
  ami           = "${lookup(var.ami_id, var.region)}"
  instance_type = "t2.micro"

  tags = {
    Name = "server-3"
  }
}
