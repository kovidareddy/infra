variable "fw_name" { 
   type = string 
   description = "Name of the Firewall rule" 
} 
variable "source_ranges" { 
  type = list 
  description = "A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS" 
}  
variable "target_tags" { 
  type = list 
  description = "A list of target tags for this firewall" 
}  
variable "protocol" {   
   type = string 
   description = "The name of the protocol to allow. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol number, or all" 
} 