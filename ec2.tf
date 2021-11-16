resource "aws_instance" "web" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  key_name = "keyman1"
  subnet_id = aws_subnet.public1.id
  associate_public_ip_address = true
  tags = {
    Name = "HelloWorld"
  }
}