#!/bin/bash

set -ouex pipefail

dnf5 -y copr enable yalter/niri
dnf5 install -y sddm niri

systemctl enable podman.socket
