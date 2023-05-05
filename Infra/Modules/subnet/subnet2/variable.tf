variable "region2" { 
  type        = string 
  description = "The region where the gateway and tunnels are going to be created" 
} 
variable "ip_cidr_range2" { 
    type = string
    description = "The IP address range that machines in this network are assigned to, represented as a CIDR block."     
} 
variable "subnet2_name" {
    type = string 
    description = "The name of the subnetwork" 
} 
variable "vpc_network2" { 
       type = string
       description = "The subnetwork connected to the vpc2 network"      
} 
