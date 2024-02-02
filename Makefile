all: install

install: diskplayer

diskplayer:
	apt-get -y update && apt-get -y install mpd
	bash templates/udev_rule.sh
	install -D -m 755 stages/services/includes/media/files/usr/local/bin/media_mount /usr/local/bin
	test -d /mnt/floppy || mkdir -p /mnt/floppy
	test -d /usr/local/share/diskplayer || mkdir -p /usr/local/share/diskplayer
	install -D -m 644 files/usr/local/share/diskplayer/bleep.mp3 /usr/local/share/diskplayer
	systemctl restart udev.service
