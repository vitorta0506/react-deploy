resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.ecs_vpc.id

    tags = {
        Name = format("%s-igw", var.cluster_name)
    }
}

resource "aws_route_table" "igw_rt" {
    vpc_id = aws_vpc.ecs_vpc.id

    tags = {
        Name = format("%s-public-route", var.cluster_name)
    }

}

resource "aws_route" "public_internet" {
    route_table_id = aws_route_table.igw_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
}
