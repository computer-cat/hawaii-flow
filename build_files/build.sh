#!/bin/bash

set -ouex pipefail

#z13 fixes

#audio
cd /lib/firmware/cirrus
ln -sf cs35l41/bincfgs/cs35l41-dsp1-19_5dB.bincfg.xz cs35l41-dsp1-spk-prot-10431fb3-l0.bincfg.xz
ln -sf cs35l41/bincfgs/cs35l41-dsp1-19_5dB.bincfg.xz cs35l41-dsp1-spk-prot-10431fb3-r0.bincfg.xz

dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-
dnf install -y steam tailscale

curl -sSL "https://github.com/dahui/z13ctl/releases/download/v1.1.6/z13ctl_1.1.6_linux_amd64.rpm" -o /tmp/z13ctl.rpm
curl -sSL "https://github.com/dahui/z13gui/releases/download/v1.2.5/z13gui_1.2.5_linux_amd64.rpm" -o /tmp/z13gui.rpm
dnf install -y /tmp/z13ctl.rpm
dnf install -y /tmp/z13gui.rpm
z13ctl setup && rm /tmp/z13ctl.rpm /tmp/z13gui.rpm