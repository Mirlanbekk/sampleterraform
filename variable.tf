variable cidr_block_vpc {
    type = string
    default = "10.1.0.0/16"
    description = "Cidr block for vpc"
}
variable instance_tenancy {
    type = string
    default = "default"
    description = "A tenancy option for instances launched into the VPC"
}
variable key_name {
    type = string
    default = "keyman1"
    description = "name of keypair"
}
variable ssh_key_path {
    type = string
    default =  "~/.ssh/id_rsa.pub"
    description = "path of ssh public key"
}
variable region {
    type = string
    default = "us-east-1"
    description = "Location of resources"
}

variable cidr_block_subnet {
    type = string
    default = "10.1.10/24"
    description = "cidr block for subnet"
    
  
}
variable map_public_ip_on_launch {
    type = bool
    default = true
    description = "specify true to indicate that instance launched into subnet should be assing "
}

variable cidr_block_route_table {
    type = string
    default = "0.0.0.0/0"
    description = "cidr block for route table"
  
}

variable security_group_name {
    type = string

}

variable security_group_description {
    type = string
  
}

variable prefix {
    type = string

}

variable ami {
    type = string
    default = "ami-04ad2567c9e3d7893"
    validation {
                condition             = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
                error_message         = "The ami value must be a valid AMI id, starting with \"ami-\"."
        }
  
}

variable instance_type {
    type = string
  
}