[![Build Status - Master](https://travis-ci.org/juju4/ansible-jiloin.svg?branch=master)](https://travis-ci.org/juju4/ansible-jiloin)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-jiloin.svg?branch=devel)](https://travis-ci.org/juju4/ansible-jiloin/branches)
# Jiloin - Jitsi Logging Interface ansible role

Ansible role to setup Jitsi Logging Interface
https://github.com/jitsi/jiloin
https://github.com/jitsi/jitsi-meet/blob/master/doc/influxdb.md

Currently, role is build for jiloin and influxdb to be installed on same server than jitsi meet.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.2
 * 2.5
 * 2.9

### Operating systems

Ubuntu 16.04 and 18.04.
Influxdb is only available in xenial repository. Use other roles/repository if you want to use older distributions.

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.jiloin
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.jiloin
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.jiloin/test/vagrant
$ vagrant up
$ vagrant ssh
```

## FAQ

* jiloin.fqdn virtualhost will use the same certificate than jitsi meet.

## Troubleshooting & Known issues

* client side javascript has credentials inside. It is advice to restrict network access to jiloin, use read-only user for web access and proper hardening.

## License

BSD 2-clause

