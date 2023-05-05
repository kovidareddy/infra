variable "vm3_name"  { 
  type        = string
  description = "name for the vm3 instance"      
} 
variable "zone" { 
  type        = string
  description = "zone of vm3" 
} 
variable "machine_type" { 
  type        = string
  description = "machine type to create" 
} 
variable "tags" { 
  type        = set(string)
  description = "Tags of vm3"  
} 
variable "image_id" { 
  type        = string
  description = "project where the source image comes from. The default project contains debian images."  
} 
variable "subnet1_name" {
   type    = string
   description = "The subnetwork connected to the subnet1"
}