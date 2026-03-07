# do-minimal

Terraform configuration for a minimal Digital Ocean droplet (Ubuntu 24.04, 1 vCPU, 512MB RAM, 10GB disk, SFO3).

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) installed
- A Digital Ocean account with an API token
- An SSH key uploaded to your Digital Ocean account

## Configuration

Set the `DIGITALOCEAN_TOKEN` environment variable:

```bash
export DIGITALOCEAN_TOKEN=your_api_token_here
```

## Variables

| Variable | Description | Default |
|---|---|---|
| `droplet_name` | Name of the droplet | `dostack-vm` |
| `region` | Digital Ocean region | `sfo3` |
| `size` | Droplet size slug | `s-1vcpu-512mb-10gb` |
| `image` | Droplet image slug | `ubuntu-24-04-x64` |
| `ssh_key_fingerprint` | Name of the SSH key in your DO account | *(required)* |

## Usage

Initialize Terraform:

```bash
terraform init
```

Plan the deployment:

```bash
terraform plan -var="ssh_key_fingerprint=your-ssh-key-name"
```

Apply to create the droplet:

```bash
terraform apply -var="ssh_key_fingerprint=your-ssh-key-name"
```

To override other defaults:

```bash
terraform apply \
  -var="ssh_key_fingerprint=your-ssh-key-name" \
  -var="droplet_name=my-droplet" \
  -var="region=nyc3"
```

## Outputs

After apply, Terraform will output:

- `droplet_ip` — Public IPv4 address
- `droplet_id` — Droplet ID
- `droplet_name` — Droplet name
- `droplet_region` — Region

## SSH Access

```bash
ssh root@$(terraform output -raw droplet_ip)
```

## Destroy

To delete the droplet:

```bash
terraform destroy -var="ssh_key_fingerprint=your-ssh-key-name"
```
