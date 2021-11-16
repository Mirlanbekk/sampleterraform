cidr_block_vpc = "10.1.0.0/16"
instance_tenancy = "default" 
key_name = "keyman1"
ssh_key_path = "~/.ssh/id_rsa.pub"
region = "us-east-1"
cidr_block_subnet = "10.1.10/24"
map_public_ip_on_launch = true
cidr_block_route_table = "0.0.0.0/0"
security_group_name = "MySG"
security_group_description = "MySG"
prefix = "test"

ami = "ami-04ad2567c9e3d7893"
 instance_type = "t2-micro"
