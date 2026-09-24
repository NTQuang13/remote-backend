resource "aws_instance" "web" {
  ami           = "ami-0532913178263be11"
  instance_type = "t3.micro"

  tags = {
    Name = "VM-User1"
  }
}

resource "aws_ebs_volume" "ebs-exten" {
  availability_zone = "ap-southeast-1c"
  size              = 8
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs-exten.id
  instance_id = aws_instance.web.id
}