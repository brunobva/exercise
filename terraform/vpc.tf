# Create a VPC
resource "aws_vpc" "ExerciseVpc" {
  cidr_block           = var.ExerciseVpcCIDR
  instance_tenancy     = var.instanceTenancy
  enable_dns_hostnames = var.dnsHostNames

  tags = {
    Name = "Exercise VPC"
    Env  = "Exercise Dev"
  }
}
resource "aws_subnet" "ExercisePubSubnet" {
  vpc_id                  = aws_vpc.ExerciseVpc.id
  cidr_block              = var.ExercisePubCIDR
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone

  tags = {
    Name = "Exercise Public Subnet"
  }
}

resource "aws_internet_gateway" "ExerciseIGW" {
  vpc_id = aws_vpc.ExerciseVpc.id

  tags = {
    Name = "Exercise Internet Gateway"
  }
}

resource "aws_route_table" "ExerciseRoutePublic" {
  vpc_id = aws_vpc.ExerciseVpc.id
  route {
    cidr_block = var.publicdestCIDRblock
    gateway_id = aws_internet_gateway.ExerciseIGW.id
  }
  tags = {
    "Name" = "Public Route Table for Exercise"
  }
}

resource "aws_route_table_association" "ExerciseRoutePublic" {
  subnet_id      = aws_subnet.ExercisePubSubnet.id
  route_table_id = aws_route_table.ExerciseRoutePublic.id
}