```
curl -OL https://cdimage.debian.org/debian-cd/current/arm64/iso-cd/debian-11.3.0-arm64-netinst.iso
qemu-img create -f qcow2 disk.qcow2 20G
./run.sh
```

When installing Debian, you might have to [manually select the installation media](https://forums.debian.net/viewtopic.php?p=745287&sid=481143c5ddc446936e4108f9f88e1e4a#p745287).
