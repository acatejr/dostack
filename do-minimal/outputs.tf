output "droplet_ip" {
  description = "Public IPv4 address of the droplet"
  value       = digitalocean_droplet.vm.ipv4_address
}

output "droplet_id" {
  description = "ID of the droplet"
  value       = digitalocean_droplet.vm.id
}

output "droplet_name" {
  description = "Name of the droplet"
  value       = digitalocean_droplet.vm.name
}

output "droplet_region" {
  description = "Region of the droplet"
  value       = digitalocean_droplet.vm.region
}
