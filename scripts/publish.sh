#!/bin/bash
cd "`dirname "$0"`"
cd ..

rsync --archive --verbose --compress --rsh=ssh \
	build/ \
	glumpnet@glump.net:/home/glumpnet/zim-irc.glump.net/

