#!/bin/bash

set -ouex pipefail

dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf install -y steam tailscale

curl -sSL "https://github.com/dahui/z13ctl/releases/download/v1.1.6/z13ctl_1.1.6_linux_amd64.rpm" -o /tmp/z13ctl.rpm
dnf install /tmp/z13ctl.rpm
z13ctl setup && rm /tmp/z13ctl.rpm

systemctl enable podman.socket
