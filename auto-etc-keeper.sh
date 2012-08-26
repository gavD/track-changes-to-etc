#!/bin/bash
#
# Monitor /etc/ and track changes
#
# Integrate with inotify and etckeeper so that any time
# anything at all changes in /etc, it gets logged. This
# hopefully means that every time I hose my php.ini or
# httpd.conf or whatever I can figure out how I bungled
# it!
#
# To use this on a Debian based system, add the following
# line to /etc/rc.local:
#
#  /root/auto-etc-keeper.sh &
pushd /etc
while inotifywait -e modify -e create -e delete /etc; do
    msg=`git status`
    etckeeper commit -m "Change detected by script\n$msg"
done
popd
