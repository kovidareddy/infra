variable "vm1_name"  { 
  type        = string
  description = "name for the vm1 instance"      
} 
variable "zone" { 
  type        = string
  description = "zone of vm1" 
} 
variable "machine_type" { 
  type        = string
  description = "machine type to create" 
}  
variable "tags" { 
  type        = set(string)
  description = "Tags of vm1"  
}
variable "image_id" { 
  type        = string
  description = "project where the source image comes from. The default project contains debian images."  
} 
variable "subnet1_name" {
   type    = string
   description = "The subnetwork connected to the subnet1"
}