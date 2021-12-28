nasm -f bin PekOS3.1/stage2.asm -o  PekOS3.1/stage2.bin

nasm -f bin  PekOS3.1/main.asm -o  PekOS3.1/main.bin

dd if=/dev/zero of= PekOS3.1/disk.img bs=1024 count=1440
dd if= PekOS3.1/main.bin of= PekOS3.1/disk.img conv=notrunc
qemu-system-x86_64 -fda PekOS3.1/disk.img
