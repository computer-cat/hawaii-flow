#!/bin/bash

set -ouex pipefail

rsync -rvK /ctx/sys/ /

#z13 fixes
cd /lib/firmware/cirrus
ln -sf cs35l41/bincfgs/cs35l41-dsp1-19_5dB.bincfg.xz cs35l41-dsp1-spk-prot-10431fb3-l0.bincfg.xz
ln -sf cs35l41/bincfgs/cs35l41-dsp1-19_5dB.bincfg.xz cs35l41-dsp1-spk-prot-10431fb3-r0.bincfg.xz