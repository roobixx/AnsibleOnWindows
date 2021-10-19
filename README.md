# Ansible on Windows

This work is based on the scripts that can be found here: [LINK](https://gist.github.com/zaenk/20178e637299404dcdcc1ff4667f24d7)

Ansible does not run on Windows based operating systems natively. However, it does run just fine within Windows Subsystem for Linux (WSL/WSL2). The issue is that if you use Packer on a windows host to build VMs, there is not an easy way to leverage Ansible as a provisioner. The following steps/processes/scripts helps get around the limitation of Ansible not running natiavely on a Windows host.

Prerequisites:

* Windows 10 
* WLS or WLS2 with Ubuntu installed
* Type 2 Hypervisor (Hyper-V, VMware Workstation, VirtualBox)
* [Packer](https://www.packer.io/downloads.html) (added to path)
* [Ansible](http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu) (installed on WSL)
* ```ansible-playbook.cmd``` in Windows ```PATH```
