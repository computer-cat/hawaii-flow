#!/bin/bash

set -ouex pipefail

dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf install -y steam tailscale

curl -sSL "https://github.com/dahui/z13ctl/releases/download/v1.1.6/z13ctl_1.1.6_linux_amd64.rpm" -o /tmp/z13ctl.rpm
curl -sSL "https://github.com/dahui/z13gui/releases/download/v1.2.5/z13gui_1.2.5_linux_amd64.rpm" -o /tmp/z13gui.rpm
dnf install -y /tmp/z13ctl.rpm
dnf install -y /tmp/z13gui.rpm
z13ctl setup && rm /tmp/z13ctl.rpm /tmp/z13gui.rpm

systemctl enable podman.socket
