resource "aws_subnet" "apispocc_sb1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_sb1
  availability_zone       = var.zone_sb1
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_1
  }
}

resource "aws_subnet" "apispocc_sb2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_sb2
  availability_zone       = var.zone_sb2
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_2
  }
}


resource "aws_internet_gateway" "apispocc_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.igw
  }
}

resource "aws_route_table" "apispocc_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.apispocc_igw.id
  }

  tags = {
    Name = var.route_table
  }
}

resource "aws_route_table_association" "apispocc_rta1" {
  subnet_id      = aws_subnet.apispocc_sb1.id
  route_table_id = aws_route_table.apispocc_rt.id
}

resource "aws_route_table_association" "apispocc_rta2" {
  subnet_id      = aws_subnet.apispocc_sb2.id
  route_table_id = aws_route_table.apispocc_rt.id
}