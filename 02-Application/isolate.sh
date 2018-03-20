#!/bin/bash

CHROOTDIR=isolate

ROOTDIRS=(bin lib lib32 lib64)

for dir in "${ROOTDIRS[@]}"; do
	mkdir -p $HOME/$CHROOTDIR/$dir
	sudo mount -o bind /$dir $HOME/$CHROOTDIR/$dir
done;

sudo mkdir -p $HOME/$CHROOTDIR$HOME

sudo chroot $HOME/$CHROOTDIR $@