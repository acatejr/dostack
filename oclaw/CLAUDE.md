# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

`oclaw` is an Ansible configuration for provisioning VirtualBox VMs. It is part of the broader `dostack` project, which also includes Terraform configs for DigitalOcean droplets in `../base/`.

## Rules

- Never read `.env` files.
- Never read files or folders with "scratch" in the name.
- If you don't know the answer, don't guess — say you don't know.

## Running the Playbook

Dependencies are managed with `uv` from the repo root. Run Ansible via:

```bash
uv run ansible-playbook -i inventory.ini playbook.yml
```

To run against a specific host:

```bash
uv run ansible-playbook -i inventory.ini playbook.yml --limit <host>
```

## Architecture

- `inventory.ini` — defines the VirtualBox VM hosts and connection details (SSH user, port, key)
- `playbook.yml` — provisions VMs: updates packages and installs common tools (vim, curl, git, htop, neofetch)

The `../base/` directory contains a separate Ansible playbook (`playbook.yml`) and Terraform configs for DigitalOcean droplets, managed via `make` targets in `../base/Makefile`.
