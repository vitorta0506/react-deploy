resource "aws_subnet" "private_subnet_a" {
  vpc_id = aws_vpc.ecs_vpc.id

  cidr_block              = "10.0.32.0/20"
  availability_zone       = format("%sa", var.region)

  tags = {
      Name = format("%s-private-a", var.cluster_name)
  }

}


