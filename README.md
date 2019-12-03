# ansible-demo

Demo of Ansible using Docker containers

## Usage

```
$ docker-compose up --build
```

Connect to the `ansible-head` server.

```
$ connect-to-head.sh
```

From this server, you should be able to use all of the necessary
ansible tools (`ansible`, `ansible-playbook`, etc.). The current
directory `.` is mounted as the default working directory `/ansible`
on the the head node, so you should be able to use your favorite text
editor to create/modify the relevant Ansible configuration files and
roles.

Remember that you will have to use the `-k` (SSH password) option when
running either ad-hoc `ansible` commands or YAML playbooks (using
`ansible-playbook`).  The root user of these containers has the
password `demopassword`.

E.g. after creating a host inventory file, `hosts.conf` with the
following:

```
[servers]
web-server
api-server
```

You can perform the `ping` command against the servers as such:

```
ansible -i hosts.conf -k -m ping all
```
