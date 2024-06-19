# MacBook Configuration for Terraform and Ansible
This repository provides an easier way to set up your MacBook with all the necessary packages for deployments using Terraform and Ansible. 

The provided script will install all the packages listed in the Brewfile, ensuring you have the essential tools for effective and efficient deployments.

## Packages Installed

The following tools will be installed on your system:

- direnv
- mage
- opentofu
- pipx
- podman
- podman-compose
- terraform
- vault
- powershell
- warp
- zed

### Python Packages for Ansible

The following Python packages will be injected to the python environment for ansible:

- hvac
- requests
- pyvmomi
- pywinrm

## Editing the Brew File
To install only specific packages or to focus solely on the Ansible setup, you can customize the Brewfile by adding or removing entries according to your needs. 

If you prefer to exclude the Ansible-related Python packages, simply delete the `pipx_setup.sh` file and remove the corresponding line from the `setup.sh` script.

## Getting Started

Clone the repository:

````shell
git clone https://github.com/yahikii/macbook-config.git
cd macbook-config
````

Ensure the setup script is executable:

````shell
chmod +x setup.sh
````

Run the setup script:

````shell
./setup.sh
````