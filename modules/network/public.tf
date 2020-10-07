resource "aws_subnet" "public_subnet_a" {
  vpc_id = aws_vpc.ecs_vpc.id

  cidr_block              = "10.0.0.0/20"
  map_public_ip_on_launch = true
  availability_zone       = format("%sa", var.region)

  tags = {
      Name = format("%s-public-a", var.cluster_name)
  }

}

resource "aws_route_table_association" "public_a" {
    subnet_id = aws_subnet.public_subnet_a.id
    route_table_id = aws_route_table.igw_rt.id
}