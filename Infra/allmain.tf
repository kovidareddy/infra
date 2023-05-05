terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.63.0"
    }
  }
}
provider "google" {
  region     = var.region
  project    = var.project
}

module "vpc1" {
  source ="/home/kovida.alla/gcp/infra/module/vpc/vpc1"
  vpc_network1 = var.vpc_network1
  routing_mode = var.routing_mode
  auto_create_subnetwork = var.auto_create_subnetwork
}

module "vpc2" {
  source ="/home/kovida.alla/gcp/infra/module/vpc/vpc2"
  vpc_network2 = var.vpc_network2
  routing_mode = var.routing_mode
  auto_create_subnetwork = var.auto_create_subnetwork
}
module "subnet1" {
  source ="/home/kovida.alla/gcp/infra/module/subnet/subnet1"
  subnet1_name = var.subnet1_name
  ip_cidr_range1 = var.ip_cidr_range1
  region1 = var.region1
  vpc_network1 = var.vpc_network1
}
module "subnet2" {
  source = "/home/kovida.alla/gcp/infra/module/subnet/subnet2"
  subnet2_name = var.subnet2_name
  ip_cidr_range2 = var.ip_cidr_range2
  region2 = var.region2
  vpc_network2 = var.vpc_network2
}
module "vm1" {
  source = "/home/kovida.alla/gcp/infra/module/vm1"
  vm1_name = var.vm1_name
  machine_type = var.machine_type
  zone   = var.zone
  tags   = var.tags
  image_id  = var.image_id
  subnet1_name = var.subnet1_name
}
module "vm2" {
  source = "/home/kovida.alla/gcp/infra/module/vm2"
  vm2_name = var.vm2_name
  machine_type = var.machine_type
  zone  = var.zone
  tags  = var.tags
  image_id = var.image_id
  subnet1_name = var.subnet1_name
}
module "vm3" {
  source = "/home/kovida.alla/gcp/infra/module/vm3"
  vm3_name = var.vm3_name
  machine_type = var.machine_type
  zone = var.zone
  tags = var.tags
  image_id = var.image_id
  subnet1_name = var.subnet1_name
}
module "snapshot1" {
  source = "/home/kovida.alla/gcp/infra/module/snapshot/snapshot1"
  snapshot1_name = var.snapshot1_name
  vm1_name  = var.vm1_name
  snapshot_zone    = var.snapshot_zone
  storage_locations = var.storage_locations 
}
module "snapshot2" {
  source = "/home/kovida.alla/gcp/infra/module/snapshot/snapshot2"
  snapshot2_name = var.snapshot2_name
  vm2_name  = var.vm2_name
  snapshot_zone    = var.snapshot_zone
  storage_locations = var.storage_locations 
}
module "snapshot3" {
  source = "/home/kovida.alla/gcp/infra/module/snapshot/snapshot3"
  snapshot3_name = var.snapshot3_name
  vm3_name  = var.vm3_name
  snapshot_zone    = var.snapshot_zone
  storage_locations = var.storage_locations 
}
module "image1" {
  source = "/home/kovida.alla/gcp/infra/module/image/image1"
  image1_name = var.image1_name
  snapshot1_name = var.snapshot1_name
}
module "image2" {
  source = "/home/kovida.alla/gcp/infra/module/image/image2"
  image2_name = var.image2_name
  snapshot2_name = var.snapshot2_name
}
module "image3" {
  source = "/home/kovida.alla/gcp/infra/module/image/image3"
  image3_name = var.image3_name
  snapshot3_name = var.snapshot3_name
}
module "disk1"  {
  source = "/home/kovida.alla/gcp/infra/module/disk/disk1"
  disk1_name = var.disk1_name
  disk_zone = var.disk_zone
}
module "disk2"  {
  source = "/home/kovida.alla/gcp/infra/module/disk/disk2"
  disk2_name = var.disk2_name
  disk_zone = var.disk_zone
}
module "disk3"  {
  source = "/home/kovida.alla/gcp/infra/module/disk/disk3"
  disk3_name = var.disk3_name
  disk_zone = var.disk_zone
}
module "firewall" {
  source = "/home/kovida.alla/gcp/infra/module/firewall"
  fw_name = var.fw_name
  vpc_network1 = var.vpc_network1
  protocol = var.protocol
  source_ranges = var.source_ranges
  target_tags = var.target_tags
}
module  "router1" {
  source = "/home/kovida.alla/gcp/infra/module/router/router1"
  router1_name = var.router1_name
  vpc_network1 = var.vpc_network1
  router_region = var.router_region
  router1_asn = var.router1_asn
}
module  "router2" {
  source = "/home/kovida.alla/gcp/infra/module/router/router2"
  router2_name = var.router2_name
  vpc_network2 = var.vpc_network2
  router_region = var.router_region
  router2_asn = var.router2_asn
}
module "vpn_gateway1" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/gateway1"
  gateway_region = var.gateway_region
  vpn_gateway1_name = var.vpn_gateway1_name
  vpc_network1 = var.vpc_network1
}
module "vpn_gateway2" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/gateway2"
  gateway_region = var.gateway_region
  vpn_gateway2_name = var.vpn_gateway2_name
  vpc_network2 = var.vpc_network2
}
module "vpn_tunnel1" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/tunnel1"
  tunnel1_name = var.tunnel1_name
  tunnel_region = var.tunnel_region
  tunnel1_vpn_gateway = var.tunnel1_vpn_gateway
  tunnel1_peer_gcp_gateway = var.tunnel1_peer_gcp_gateway
  shared_secret1 = var.shared_secret1
  tunnel_router1 = var.tunnel_router1
  vpn_gateway_interface1 = var.vpn_gateway_interface1
}
module "vpn_tunnel2" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/tunnel2"
  tunnel1_name = var.tunnel2_name
  tunnel_region = var.tunnel_region
  tunnel2_vpn_gateway = var.tunnel2_vpn_gateway
  tunnel2_peer_gcp_gateway = var.tunnel2_peer_gcp_gateway
  shared_secret2 = var.shared_secret2
  tunnel_router1 = var.tunnel_router1
  vpn_gateway_interface2 = var.vpn_gateway_interface2
}
module "vpn_tunnel3" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/tunnel3"
  tunnel3_name = var.tunnel3_name
  tunnel_region = var.tunnel_region
  tunnel3_vpn_gateway = var.tunnel3_vpn_gateway
  tunnel3_peer_gcp_gateway = var.tunnel3_peer_gcp_gateway
  shared_secret1 = var.shared_secret1
  tunnel_router2 = var.tunnel_router2
  vpn_gateway_interface1 = var.vpn_gateway_interface1
}
module "vpn_tunne14" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/tunnel4"
  tunnel4_name             = var.tunnel4_name
  tunnel_region            = var.tunnel_region
  tunnel4_vpn_gateway      = var.tunnel4_vpn_gateway
  tunnel4_peer_gcp_gateway = var.tunnel4_peer_gcp_gateway
  shared_secret2           = var.shared_secret2
  tunnel_router2           = var.tunnel_router2
  vpn_gateway_interface2   = var.vpn_gateway_interface2
}
module "router1_interface1" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router1_interface1"
  router1_interface1_name     = var.router1_interface1_name
  router1_name                = var.router1_name
  router1_interface1_region   = var.router1_interface1_region
  router1_interface1_ip_range = var.router1_interface1_ip_range
  vpn_tunnel1.name            = var.vpn_tunnel1.name
}
module "router1_peer1" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router1_peer1"
  router1_peer1_name            = var.router1_peer1_name 
  router1_name                  = var.router1_name
  router1_peer1_region          = var.router1_peer1_region
  router1-peer1_peer_ip_address = var.router1peer1_peer_ip_address
  router1_peer1peer_asn         = var.router1_peer1_peer_asn
  advertised_route_priority     = var.advertised_route_priority
  router1_interface1.name       = var.router1_interface1.name
}
module "router1_interface2" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router1_interface2"
  router1_interface2_name     = var.router1_interface2_name
  router1_name                = var.router1_name
  router1_interface2_region   = var.router1_interface2_region
  router1_interface2_ip_range = var.router1_interface2_ip_range
  vpn_tunnel2.name            = var.vpn_tunnel2.name
}
module "router1_peer2" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router1_peer2"
  router1_peer2_name             = var.router1_peer2.name 
  router1_name                   = var.router1_name
  router1_peer2_region           = var.router1_peer2_region
  router1-peer2_peer_ip_address  = var.router1_peer2_peer_ip_address
  router1_peer2_peer_asn         = var.router1_peer2_peer_asn
  advertised_route_priority      = var.advertised_route_priority
  router1_interface2.name        = var.router1_interface2.name
}
module "router2_interface1" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router2_interface1"
  router2_interface1_name     = var.router2_interface1.name
  router1_name                = var.router1_name
  router2_interface1_region   = var.router2_interface1_region
  router2_interface1_ip_range = var.router2_interface1_ip_range
  vpn_tunnel3.name            = var.vpn_tunnel3.name
}
module "router2_peer1" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router2_peer1"
  router2_peer1_name            = var.router2_peer1.name 
  router1_name                  = var.router1_name
  router2_peer1_region          = var.router2_peer1_region
  router2-peer1_peer_ip_address = var.router2_peer1_peer_ip_address
  router2_peer1_peer_asn        = var.router2_peer1_peer_asn
  advertised_route_priority     = var.advertised_route_priority
  router2_interface1.name       = var.router2_interface1.name
}
module "router2_interface2" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router2_interface2"
  router2_interface2_name     = var.router2_interface2.name
  router2_name                = var.router2_name
  router2_interface2_region   = var.router2_interface2_region
  router2_interface2_ip_range = var.router2_interface2_ip_range
  vpn_tunnel4.name            = var.vpn_tunnel4.name
}
module "router2_peer2" {
  source = "/home/kovida.alla/gcp/infra/module/vpn/router2_peer2"
  router2_peer2_name             = var.router2_peer2.name 
  router2_name                   = var.router2_name
  router2_peer2_region           = var.router2_peer2_region
  router2-peer2_peer_ip_address  = var.router2_peer2_peer_ip_address
  router2_peer2_peer_asn         = var.router2_peer2_peer_asn
  advertised_route_priority      = var.advertised_route_priority
  router2_interface2.name        = var.router2_interface2.name
}



