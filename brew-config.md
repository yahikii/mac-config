# Brew Config
## Editing the Brew File
To install only specific packages or to focus solely on the Ansible setup, you can customize the Brewfile by adding or removing entries according to your needs.

If you prefer to exclude the Ansible-related Python packages, simply delete the `pipx_setup.sh` file and remove the corresponding line from the `setup.sh` script.