# MacBook Configuration
This repository provides an easier way to set up your MacBook with all the necessary packages for deployments using Terraform and Ansible and other things like podman.
The provided script will install all the packages listed in the Brewfile, ensuring you have the essential tools for effective and efficient deployments. 

💡 Note that this Brewfile mirrors the setup of my MacBook, hence it includes additional programs as well. If you don't need one of the following packages, just edit the Brew File as explained below. 

## Packages Installed

The following tools will be installed on your system:

- direnv
- mage
- opentofu
- pipx
- docker
- podman
- podman-compose
- terraform
- tflint
- vault
- powershell
- zed
- azure-cli
### Kubernetes related
- helm
- kind
- kubernetes-cli
- k9s

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

Install the Brewfile 
````shell
brew bundle --file=./Brewfile
````