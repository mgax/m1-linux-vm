```
curl -OL https://cdimage.ubuntu.com/releases/22.04/release/ubuntu-22.04-live-server-arm64.iso
qemu-img create -f qcow2 Ubuntu.qcow2 20G
./run.sh
```
