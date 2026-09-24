resource "aws_instance" "web" {
  ami           = "ami-0532913178263be11"
  instance_type = "t3.micro"

  tags = {
    Name = "VM-User1"
  }
}

resource "aws_ebs_volume" "web_volume" {
  availability_zone = "ap-southeast-1a"
  size              = 8
}