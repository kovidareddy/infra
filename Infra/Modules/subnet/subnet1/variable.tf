variable "region1" { 
  type        = string 
  description = "The region where the gateway and tunnels are going to be created" 
} 
variable "ip_cidr_range1" { 
    type = string
    description = "The IP address range that machines in this network are assigned to, represented as a CIDR block"     
} 
variable "subnet1_name" {
    type = string 
    description = "The name of the subnetwork" 
} 
variable "vpc_network1" { 
       type = string
       description = "The subnetwork connected to the vpc1 network"      
} 
