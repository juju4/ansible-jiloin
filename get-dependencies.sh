#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

#[ ! -d $rolesdir/freedomofpress.jitsi-meet ] && git clone https://github.com/freedomofpress/ansible-role-jitsi-meet $rolesdir/freedomofpress.jitsi-meet
[ ! -d $rolesdir/freedomofpress.jitsi-meet ] && git clone https://github.com/juju4/ansible-role-jitsi-meet $rolesdir/ansible-role-jitsi-meet
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.jiloin ] && ln -s ansible-jiloin $rolesdir/juju4.jiloin
[ ! -e $rolesdir/juju4.jiloin ] && cp -R $rolesdir/ansible-jiloin $rolesdir/juju4.jiloin

## don't stop build on this script return code
true

