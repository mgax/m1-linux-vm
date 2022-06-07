#!/bin/bash

set -euo pipefail

exec qemu-system-aarch64 \
  -serial stdio \
  -M virt,highmem=off \
  -accel hvf \
  -cpu cortex-a72 \
  -smp 4 \
  -m 4096 \
  -drive if=pflash,format=raw,file=/opt/homebrew/share/qemu/edk2-aarch64-code.fd,readonly=on \
  -device virtio-gpu-pci \
  -display default,show-cursor=on \
  -device qemu-xhci \
  -device usb-kbd \
  -device usb-tablet \
  -device intel-hda \
  -device hda-duplex \
  -drive file=./Ubuntu.qcow2,if=virtio,cache=writethrough \
  -cdrom ./ubuntu-22.04-live-server-arm64.iso
