resource "aws_instance" "cra-W155" {
  ami                    = "ami-0084a47cc718c111a"
  instance_type          = "t2.micro"
  availability_zone      = "eu-central-1a"
  key_name               = "mse-svh105"
  subnet_id              = aws_subnet.cra_3_pub1.id
  vpc_security_group_ids = [aws_security_group.cra_3_sg.id]


  tags = {
    Name = "CRA-W155"
  }
}

resource "aws_instance" "cra-W156" {
  ami                    = "ami-0084a47cc718c111a"
  instance_type          = "t2.micro"
  availability_zone      = "eu-central-1b"
  key_name               = "mse-svh105"
  subnet_id              = aws_subnet.cra_3_pub2.id
  vpc_security_group_ids = [aws_security_group.cra_3_sg.id]

  tags = {
    Name = "CRA-W156"
  }
}

resource "aws_instance" "cra-A157" {
  ami                    = "ami-0eddb4a4e7d846d6f"
  instance_type          = "t2.micro"
  availability_zone      = "eu-central-1a"
  key_name               = "mse-svh105"
  subnet_id              = aws_subnet.cra_3_priv1.id
  vpc_security_group_ids = [aws_security_group.cra_3_sg.id]


  tags = {
    Name = "CRA-A157"
  }
}

resource "aws_instance" "cra-A158" {
  ami                    = "ami-0eddb4a4e7d846d6f"
  instance_type          = "t2.micro"
  availability_zone      = "eu-central-1b"
  key_name               = "mse-svh105"
  subnet_id              = aws_subnet.cra_3_priv2.id
  vpc_security_group_ids = [aws_security_group.cra_3_sg.id]

  tags = {
    Name = "CRA-A158"
  }
}
