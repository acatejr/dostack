
output "droplet_id" {
  description = "ID of the droplet"
  value       = digitalocean_droplet.dev.id
}

output "droplet_name" {
  description = "Name of the droplet"
  value       = digitalocean_droplet.dev.name
}

output "droplet_ip" {
  description = "IP address of the droplet"
  value       = digitalocean_droplet.dev.ipv4_address
}
