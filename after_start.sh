#!/bin/bash
safe_asterisk

ln -s /tmp/lua-dialplan/ /usr/local/lib/lua/5.1/dialplan

ln -s /tmp/lua-dialplan/extensions.lua /etc/asterisk/extensions.lua

sleep 1

asterisk -rvvvvvvv