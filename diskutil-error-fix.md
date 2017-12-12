This came after formatting a new external harddisk.

    diskutil unmountDisk force disk3
    sudo dd if=/dev/zero of=/dev/disk3 bs=1024 count=1024
    diskutil partitionDisk disk3 GPT JHFS+ "lattice" 0g
