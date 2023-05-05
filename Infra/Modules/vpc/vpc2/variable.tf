variable "vpc_network2" { 
    description = "The name of the VPC network2 " 
     type = string 

}
variable "auto_create_subnetwork" { 
   type  = boolean 
   description = "The name of the auto create subnetwork" 
} 
variable "routing_mode"  {
   type = string
   description = "The name of the routing_mode global or region"
}