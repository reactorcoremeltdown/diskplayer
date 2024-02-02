# diskplayer

A hardware music player based on floppies & mpd. Recommended to install on RaspiOS.

[Original project by Dino Fizzotti](https://www.dinofizzotti.com/blog/2020-02-05-diskplayer-using-3.5-floppy-disks-to-play-albums-on-spotify/)

## How to install

1. Discover the vendor and the product ID of your floppy drive by running `lsusb`. Example: `054c:002c Sony Corp. USB Floppy Disk Drive`, where `054c` is the vendor ID, and `002c` is the product ID
2. Insert these values into `device_params` file
3. Run `make`

## How to use

1. Create a playlist with your MPD client
2. Save a playlist as `media.m3u`
3. Record the resulting playlist file on a floppy diskette
4. Insert the diskette into a floppy drive & enjoy the music!
