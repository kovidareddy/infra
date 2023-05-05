variable "vpc_network1" { 
    description = "The name of the VPC network1 " 
     type = string 

}
variable "auto_create_subnetwork" { 
   type  = bool 
   description = "The name of the auto create subnetwork" 
} 
variable "routing_mode"  {
   type = string
   description = "The name of the routing_mode global or region"
}