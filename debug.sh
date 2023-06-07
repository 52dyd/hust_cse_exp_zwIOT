#!/bin/bash
qemu-system-arm -M mps2-an386 -cpu cortex-m4 -m 16M -nographic -d in_asm,nochain -s -S -kernel Task1_67.axf -D log.txt
