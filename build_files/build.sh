#!/bin/bash

set -ouex pipefail

#z13 fixes

#audio
cd /lib/firmware/cirrus
sudo ln -sf cs35l41/bincfgs/cs35l41-dsp1-19_5dB.bincfg.xz cs35l41-dsp1-spk-prot-10431fb3-l0.bincfg.xz
sudo ln -sf cs35l41/bincfgs/cs35l41-dsp1-19_5dB.bincfg.xz cs35l41-dsp1-spk-prot-10431fb3-r0.bincfg.xz

systemctl enable reload-hid_asus.service