variable "project" { 
    description = "The project in which the resource belongs. If it is not provided, the provider project is used." 
    type        = string 
} 
variable "region" { 
  type        = string 
  description = "The region where the gateway and tunnels are going to be created"
} 
variable "auto_create_subnetwork" { 
   type  = bool 
   description = "The name of the auto create subnetwork" 
}
variable "routing_mode"  {
   type = string
   description = "The name of the routing_mode REGIONAL or GLOBAL"
}
variable "vpc_network2" { 
    description = "The name of the VPC network2 " 
     type = string 
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
variable "region1"  {
    type = string
    description = "The name of the region1"
}

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
  description = "Tags of vm"  
}
variable "image_id" { 
  type        = string
  description = "project where the source image comes from. The default project contains debian images."  
} 
variable "vm2_name"  { 
  type        = string
  description = "name for the vm2 instance"      
}
variable "vm3_name"  { 
  type        = string
  description = "name for the vm3 instance"      
}

variable  "snapshot1_name"  { 
      type        =  string 
      description = "The name of the snapshot1" 
} 
variable  "snapshot_zone"  { 
      type        =  string 
      description = "The name of the zone" 
}  
variable  "storage_locations"  { 
      type        =  list 
      description = "The snapshot1 name of the storage location"
} 
variable  "snapshot2_name"  { 
      type        =  string 
      description = "The name of the snapshot2" 
} 
variable  "snapshot3_name"  { 
      type        =  string 
      description = "The name of the snapshot3" 
} 
variable  "image1_name"  { 
      type  =  string 
      description = "The name of the image1" 
} 
variable  "image2_name"  { 
      type  =  string 
      description = "The name of the image2" 
} 
variable  "image3_name"  { 
      type  =  string 
      description = "The name of the image3" 
} 
variable  "disk1_name"  { 
      type  =  string 
      description =  "The name of the  disk1" 
}
variable  "disk1_zone"  { 
      type        =  string 
      description = "The name of the zone" 
}  
variable  "disk2_name"  { 
      type  =  string 
      description =  "The name of the  disk2" 
} 
variable  "disk2_zone"  { 
      type        =  string 
      description = "The name of the zone" 
} 
variable  "disk3_name"  { 
      type  =  string 
      description =  "The name of the  disk3" 
} 
variable  "disk3_zone"  { 
      type        =  string 
      description = "The name of the zone" 
} 
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

variable "router1_name" {
   type = string
   description = "The name of the router1"
}
variable "router2_name" {
   type = string
   description = "The name of the router2"
}
variable "router_region" { 
  type        = string 
  description = "The name of the router region" 
} 
variable "router1_asn" { 
  type        = number 
  description = "ASN of the Cloud Router1" 
} 
variable "router2_asn" { 
  type        = number 
  description = "ASN of the Cloud Router2" 
} 

variable "vpn_gateway1_name" {
   type = string
   description = "The name of the vpn gateway1"
}
variable "vpn_gateway2_name" {
   type = string
   description = "The name of the vpn gateway2"
}
variable "gateway_region" { 
  type        = string 
  description = "The region where the gateway and tunnels are going to be created" 
} 

variable "tunne11_name" {
   type  = string
   description = "The name of the vpn tunnel1"
}
variable "tunne12_name" {
   type  = string
   description = "The name of the vpn tunnel2"
}
variable "tunne13_name" {
   type  = string
   description = "The name of the vpn tunnel3"
}
variable "tunne14_name" {
   type  = string
   description = "The name of the vpn tunnel4"
}
variable "tunnel_region" {
  type = string
  description = " The name of the vpn tunnel region"
} 
variable "tunnel1_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway1"
}
variable "tunnel2_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway1"
}
variable "tunnel3_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway2"
}
variable "tunnel4_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway2"
}
variable "tunnel1_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway2"
}
variable "tunnel2_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway2"
}
variable "tunnel3_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway1"
}
variable "tunnel4_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway1"
}
variable "shared_secret1" { 
  type        = list 
  description = "IKEv2 Secret1 of the Tunnels" 
} 
variable "shared_secret2" { 
  type        = list 
  description = "IKEv2 Secret2 of the Tunnels" 
} 
variable "tunnel_router1" { 
  type = string
  description = "The name of the router1" 
} 
variable "tunnel_router2" { 
  type = string
  description = "The name of the router2" 
}
variable "vpn_gateway_interface1" {
  type = list
  description = "The name of the vpn gateway 0 interface"
}
variable "vpn_gateway_interface2" {
  type = list
  description = "The name of the vpn gateway  1 interface"
}

 
