variable "do_token" {
  description = "DigitalOcean API token"
}

variable "droplet_name" {
  description = "Name of the droplet"
  type        = string
  default     = "minimal"
}

variable "region" {
  description = "Digital Ocean region"
  type        = string
  default     = "sfo3"
}

variable "size" {
  description = "Droplet size slug"
  type        = string
  default     = "s-1vcpu-512mb-10gb"
}

variable "image" {
  description = "Droplet image slug"
  type        = string
  default     = "ubuntu-24-04-x64"
}

variable "ssh_key_fingerprint" {
  description = "SSH key fingerprint for droplet access"
  type        = string
  default     = "e1:f2:33:1b:04:30:6c:09:28:9f:13:b3:40:cd:6d:7f"
}
