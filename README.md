[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-docker.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-docker)
# Ansible role `docker`

An Ansible role for install docker. Specifically, the responsibilities of this role are to:

- install docker-ce
- configure daemon
- manage proxy
- install docker-compose

## Requirements

- Ansible 2.5+

## Role Variables


| Variable   | Default | Comments (type)  |
| :---       | :---    | :---             |
| `openio_docker_apt_arch` | `amd64` | Architecture for ubuntu hosts |
| `openio_docker_compose` | `true` | Install `docker-compose` |
| `openio_docker_daemon_configuration` | `dict` | Options of docker daemon |
| `openio_docker_provision_only` | `false` | Provision only without restarting |
| `openio_docker_service_enabled` | `true` | Enable service at system boot |

## Dependencies

No dependencies.

## Example Playbook

```yaml
- hosts: all
  become: true

  roles:
    #- role: users
    - role: docker
```


```ini
[all]
node1 ansible_host=192.168.1.173
```

## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License

GNU AFFERO GENERAL PUBLIC LICENSE, Version 3

## Contributors

- [Cedric DELGEHIER](https://github.com/cdelgehier) (maintainer)