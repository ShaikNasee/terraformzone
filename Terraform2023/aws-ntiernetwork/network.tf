resource "aws_vpc" "maintf" {
    cidr_block = var.cidr_block
    tags = {
      "Name" = "Ntiervpc"
    }
}
resource "aws_subnet" "subnets" {
    count = length(var.subnet_tags) 
    vpc_id = aws_vpc.maintf.id
    cidr_block = cidrsubnet(var.cidr_block,8,count.index)
    availability_zone = var.subnet_azs[count.index]
    tags = {
        Name = var.subnet_tags[count.index]
      
    }
    depends_on = [
      aws_vpc.maintf
    ]
     
}