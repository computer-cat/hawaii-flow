#!/bin/bash

set -ouex pipefail

dnf5 -y copr enable yalter/niri
dnf5 install -y sddm niri

cat > /usr/share/ublue-os/image-info.json <<EOF
{
  "image-name": "Plasmosis,
  "image-vendor": "Sylvie00",
  "image-ref": "plasmosis",
  "image-tag": "latest",
  "image-branch": "main",
  "base-image-name": "Fedora Kinoite",
  "fedora-version": "$(rpm -E %fedora)",
  "version": "$(rpm -E %fedora)",
  "version-pretty": "$(rpm -E %fedora)"
}
EOF

systemctl enable podman.socket
