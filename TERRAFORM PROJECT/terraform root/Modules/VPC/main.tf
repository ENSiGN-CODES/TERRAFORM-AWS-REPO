 #1 : Create a VPC
resource "aws_vpc" "myvpc"{
    cidr_block = var.vpc_cidr
    tags = {
        Name = var.vpc_name
    }
}

 #2: Create a public subnet
resource "aws_subnet" "PublicSubnet"{
    vpc_id = aws_vpc.myvpc.id
    availability_zone = var.availability_zone
    cidr_block = var.public_subnet_cidr
}
 


 #3 : create a private subnet
resource "aws_subnet" "PrivateSubnet"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_cidr
    map_public_ip_on_launch = true

}
#3a : create a 2nd private subnet for db
resource "aws_subnet" "PrivateSubnet2"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_cidr
    map_public_ip_on_launch = true
}

 #4 : create IGW
resource "aws_internet_gateway" "myIgw"{
    vpc_id = aws_vpc.myvpc.id
}

 #5 : route Tables for public subnet
resource "aws_route_table" "PublicRT"{
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.myIgw.id
    }
}
 

 #7 : route table association public subnet 
resource "aws_route_table_association" "PublicRTAssociation"{
    subnet_id = aws_subnet.PublicSubnet.id
    route_table_id = aws_route_table.PublicRT.id
}
