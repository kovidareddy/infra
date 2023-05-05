resource "google_compute_router" "router1" { 
  name    = var.router1_name 
  network = var.vpc_network1 
  region  = var.router_region 
  bgp { 
    asn = var.router1_asn 
  } 
}
resource "google_compute_router" "router2" { 
  name    = var.router2_name 
  network = var.vpc_network2 
  region  = var.router_region 
  bgp { 
    asn = var.router2_asn
  }
}
resource "google_compute_ha_vpn_gateway" "vpn_gateway1" { 
  region  = var.gateway_region 
  name    = var.vpn_gateway1_name 
  network = var.vpc_network1 
}   
resource "google_compute_ha_vpn_gateway" "vpn_gateway2" { 
  region  = var.gateway_region 
  name    = var.vpn_gateway2_name
  network = var.vpc_network2 
}
resource "google_compute_vpn_tunnel" "tunnel1" { 
  name                  = var.tunnel1_name
  region                = var.tunnel_region 
  vpn_gateway           = var.tunnel1_vpn_gateway 
  peer_gcp_gateway      = var.tunnel1_peer_gcp_gateway 
  shared_secret         = var.shared_secret1 
  router                = var.tunnel_router1 
  vpn_gateway_interface = vpn_gateway_interface1 
}  
resource "google_compute_vpn_tunnel" "tunnel2" { 
  name                  = var.tunnel2_name 
  region                = var.tunnel_region 
  vpn_gateway           = var.tunnel2_vpn_gateway 
  peer_gcp_gateway      = var.tunnel2_peer_gcp_gateway 
  shared_secret         = var.shared_secret2  
  router                = var.tunnel_router1
  vpn_gateway_interface = var.vpn_gateway_interface2
} 
resource "google_compute_vpn_tunnel" "tunnel3" { 
  name                  = var.tunnel3_name 
  region                = var.tunnel_region  
  vpn_gateway           = var.tunnel3-vpn_gateway 
  peer_gcp_gateway      = var.tunnel3peer_gcp_gateway 
  shared_secret         = var.shared_secret1 
  router                = var.tunnel_router2
  vpn_gateway_interface = var.vpn_gateway_interface1 
} 
resource "google_compute_vpn_tunnel" "tunnel4" { 
  name                  = var.tunnel4_name
  region                = var.tunne1_region 
  vpn_gateway           = var.tunel4_vpn_gateway 
  peer_gcp_gateway      = var.tunnel4_peer_gcp_gateway 
  shared_secret         = var.shared_secret2 
  router                = var.tunnel_router2 
  vpn_gateway_interface = var.vpn_gateway_interface2
}
resource "google_compute_router_interface" "router1_interface1" { 
  name                     = var.router1_interface1.name 
  router                   = var.router1_name 
  region                   = var.router1_interface1_region 
  ip_range                 = var.router1_interface1_ip_range 
  vpn_tunnel               = var.vpn_tunnel1.name 
} 
resource "google_compute_router_peer" "router1_peer1" { 
  name                      = var.router1_peer1.name 
  router                    = var.router1_name 
  region                    = var.router1_peer1_region 
  peer_ip_address           = var.router1_peer1_peer_ip_address 
  peer_asn                  = var.router1_peer1_peer_asn
  advertised_route_priority = var.advertised_route_priority
  interface                 = var.router1_interface1.name 
} 
resource "google_compute_router_interface" "router1_interface2" { 
  name                     = var.router1-interface2.name 
  router                   = var.router1.name 
  region                   = var.router1_interface2_region 
  ip_range                 = var.router1_interface2_ip_range
  vpn_tunnel               = var.vpn_tunnel2.name 
} 
resource "google_compute_router_peer" "router1_peer2" { 
  name                      = var.router1_peer2.name 
  router                    = var.router1.name 
  region                    = var.router1_peer2_region 
  peer_ip_address           = var.router1_peer2_peer_ip_address
  peer_asn                  = var.router1_peer2_peer_asn
  advertised_route_priority = var.advertised_route_priority
  interface                 = var.router1_interface2.name 
} 
resource "google_compute_router_interface" "router2_interface1" { 
  name                      = var.router2-interface1.name 
  router                    = var.router2.name 
  region                    = var.router2_interface1_region 
  ip_range                  = var.router2_interface1_ip_range 
  vpn_tunnel                = var.vpn_tunnel3.name 
} 
resource "google_compute_router_peer" "router2_peer1" { 
  name                      = var.router2_peer1.name 
  router                    = var.router2.name 
  region                    = var.router2_peer1_region 
  peer_ip_address           = var.router2_peer1_peer_ip_address 
  peer_asn                  = var.router2_peer1_peer_asn
  advertised_route_priority = var.advertised_route_priority
  interface                 = var.router2_interface1.name 
} 
resource "google_compute_router_interface" "router2_interface2" { 
  name                      = var.router2-interface2_name
  router                    = var.router2.name 
  region                    = var.router2_interface2_region
  ip_range                  = var.router2_interface2_ip_range
  vpn_tunnel                = var.vpn_tunnel4.name 
} 
resource "google_compute_router_peer" "router2_peer2" { 
  name                      = var.router2_peer1_name
  router                    = var.router2.name 
  region                    = var.router2_peer2_region
  peer_ip_address           = var.router2_peer2_peer_ip_address
  peer_asn                  = var.router2_peer2_peer_asn
  advertised_route_priority = var.advertised_route_priority
  interface                 = var.router2_interface2.name 
} 


     