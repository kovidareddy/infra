variable "router1_name" {
   type = string
   description = "The name of the router1"
}
variable "router2_name" {
   type = string
   description = "The name of the router2"
}
variable "vpc_network1" { 
  type        = string 
  description = "The name of the vpcnetwork1 to use" 
} 
variable "vpc_network2" { 
  type        = string 
  description = "The name of the vpcnetwork2 to use" 
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
variable "tunnel_region" {
  type = string
  description = " The name of the vpn tunnel region"
} 
variable "tunnel1_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway1"
}
variable "tunnel1_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway2"
}

variable "tunne12_name" {
   type  = string
   description = "The name of the vpn tunnel2"
}
variable "tunnel2_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway2"
}
variable "tunnel2_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway1"
}

variable "tunne13_name" {
   type  = string
   description = "The name of the vpn tunnel3"
}
variable "tunnel3_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway2"
}
variable "tunnel3_peer_gcp_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel peer gcp gateway1"
}

variable "tunne14_name" {
   type  = string
   description = "The name of the vpn tunnel4"
}
variable "tunnel4_vpn_gateway" {
  type = string
  description = "The vpn tunnel name of the the tunnel vpn gateway2"
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

variable "router1_peer1_name" {
  type = string
  description = "The name of the router1_peer1_name"
}
variable "router1_peer2_name" {
  type = string
  description = "The name of the router1_peer2_name"
}
variable "router2_peer1_name" {
  type = string
  description = "The name of the router2_peer1_name"
}
variable "router2_peer2_name" {
  type = string
  description = "The name of the router2_peer2_name"
}
variable "peer_asn" { 
  type        = number 
  description = "ASN of the peer VPN's router" 
} 
variable "peer_ips" { 
  type        = list 
  description = "Peer Tunnel IPs" 
}  

variable "advertised_route_priority" { 
  type        = list(number) 
  description = "The priority of routes advertised to the BGP peers"  
}  
variable "bgp_cr_session_range" { 
  type        = list 
  description = "Source IP and range of cloud router BGP session. A valid /30 subnet like 169.254.0.5/30" 
}  
variable "peer_remote_session_range" { 
  type        = list 
  description = "Remote peer IP of cloud router BGP session. A valid ip in a /30 block like 169.254.0.6" 
} 

variable "router1_interface1.name" {
  type = string
  description = " the name of the router1_interface1 name"
} 
variable "router1_name" {
  type = string
  description = "the name of the router1_name"
}
variable "router1_interface1_region" {
  type = string
  description = "The name of the router1_interface1_region"
}
variable "router1_interface1_ip_range" {
  type = list
  description = "The name of the router1_interface1_ip_range"
}
variable "vpn_tunnel1.name " {
  type = string
  description = "The name of the vpn_tunnel1 name"
}

variable "router1_interface2.name" {
  type = string
  description = " the name of the router1_interface2 name"
} 
variable "router1_interface2_ip_range" {
  type = list
  description = "The name of the router1_interface2_ip_range"
}
variable "vpn_tunnel2.name " {
  type = string
  description = "The name of the vpn_tunnel2 name"
}

variable "router2_interface1.name" {
  type = string
  description = " the name of the router2_interface1 name"
} 
variable "router2_interface1_ip_range" {
  type = list
  description = "The name of the router2_interface1_ip_range"
}
variable "vpn_tunnel3.name " {
  type = string
  description = "The name of the vpn_tunnel3 name"
}

variable "router2_interface2.name" {
  type = string
  description = " the name of the router2_interface2 name"
} 
variable "router2_interface2_ip_range" {
  type = list
  description = "The name of the router2_interface2_ip_range"
}
variable "vpn_tunnel4.name " {
  type = string
  description = "The name of the vpn_tunnel4 name"
}

variable "router1_peer1.name" {
  type = string
  description = "The name of the router1_peer1.name"
}
variable "router1_peer1_region" {
  type = string
  description = "The name of the router1_peer1_region"
}
variable "router1_peer1_peer_ip_address" {
  type = list 
  description = "The name of the router1_peer1_peer_ip_address"
}
variable "router1_peer1_peer_asn" {
  type = list
  description = "The name of the router1_peer1_peer_asn"
} 
variable "advertised_route_priority" {
  type = number
  description = "The name of the advertised_route_priority"
}
variable "router1_interface1.name" {
  type = string
  description = "The name of the router1_interface1.name"
}

variable "router1_peer2.name" {
  type = string
  description = "The name of the router1_peer2.name"
}
variable "router1_peer2_peer_ip_address" {
  type = list 
  description = "The name of the router1_peer2_peer_ip_address"
}
variable "router1_peer2_peer_asn" {
  type = list
  description = "The name of the router1_peer2_peer_asn"
} 
variable "router1_interface2.name" {
  type = string
  description = "The name of the router1_interface2.name"
}

variable "router2_peer1.name" {
  type = string
  description = "The name of the router2_peer1.name"
}
variable "router2_peer1_peer_ip_address" {
  type = list 
  description = "The name of the router2_peer1_peer_ip_address"
}
variable "router2_peer1_peer_asn" {
  type = list
  description = "The name of the router2_peer1_peer_asn"
} 
variable "router2_interface1.name" {
  type = string
  description = "The name of the router2_interface1.name"
}

variable "router2_peer2.name" {
  type = string
  description = "The name of the router2_peer2.name"
}
variable "router2_peer2_peer_ip_address" {
  type = list 
  description = "The name of the router2_peer2_peer_ip_address"
}
variable "router2_peer2_peer_asn" {
  type = list
  description = "The name of the router2_peer2_peer_asn"
} 
variable "router2_interface2.name" {
  type = string
  description = "The name of the router2_interface2.name"
}



