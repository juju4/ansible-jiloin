#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

#[ ! -d $rolesdir/freedomofpress.jitsi-meet ] && git clone https://github.com/freedomofpress/ansible-role-jitsi-meet $rolesdir/freedomofpress.jitsi-meet
[ ! -d $rolesdir/freedomofpress.jitsi-meet ] && git clone https://github.com/juju4/ansible-role-jitsi-meet $rolesdir/freedomofpress.jitsi-meet

