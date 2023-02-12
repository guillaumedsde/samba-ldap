# 🐋 + 📁 + 👤 guillaumedsde/samba-ldap

[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/guillaumedsde/samba-ldap)](https://hub.docker.com/r/guillaumedsde/samba-ldap)
[![Docker Pulls](https://img.shields.io/docker/pulls/guillaumedsde/samba-ldap)](https://hub.docker.com/r/guillaumedsde/samba-ldap)
[![GitHub stars](https://img.shields.io/github/stars/guillaumedsde/samba-ldap?label=Github%20stars)](https://github.com/guillaumedsde/samba-ldap)
[![GitHub watchers](https://img.shields.io/github/watchers/guillaumedsde/samba-ldap?label=Github%20Watchers)](https://github.com/guillaumedsde/samba-ldap)
[![Docker Stars](https://img.shields.io/docker/stars/guillaumedsde/samba-ldap)](https://hub.docker.com/r/guillaumedsde/samba-ldap)
[![GitHub](https://img.shields.io/github/license/guillaumedsde/samba-ldap)](https://github.com/guillaumedsde/samba-ldap/blob/master/LICENSE.md)

Debian bullseyes based docker image for SAMBA with ldap authentication.

This image is based on the work of [`andrespp/docker-samba-ldap`](https://www.github.com/andrespp/docker-samba-ldap).

## 🏁 How to Run

### `docker run`

```bash
$ docker run  -v /path/to/nslcd.conf:/etc/nslcd.conf:ro \
              -v /path/to/smb.conf:/etc/samba/smb.conf:ro \
              -v /etc/localtime:/etc/localtime:ro \
              -e SAMBA_LDAP_PASSWORD=${LDAP_ADMIN_PASSWORD} \
              -p 139:139 \
              -p 445:445 \
              guillaumedsde/guillaumedsde/samba-ldap:latest
```

### `docker-compose.yml`

```yaml
version: "3.3"
services:
  guillaumedsde:
    volumes:
      - "/path/to/nslcd.conf:/etc/nslcd.conf:ro"
      - "/path/to/smb.conf:/etc/samba/smb.conf:ro"
      - "/etc/localtime:/etc/localtime:ro"
    environment:
      - "SAMBA_LDAP_PASSWORD=${LDAP_ADMIN_PASSWORD}"
    ports:
      - "139:139"
      - "445:445"
    image: "guillaumedsde/guillaumedsde/samba-ldap:latest"
```

## 🖥️ Supported architectures

This container is built for many hardware platforms (yes, even ppc64le whoever uses that... 😉):

- linux/386
- linux/amd64
- linux/arm/v6
- linux/arm/v7
- linux/arm64
- linux/ppc64le

All you have to do is use a recent version of docker and it will pull the appropriate version of the image [guillaumedsde/samba-ldap](https://hub.docker.com/repository/docker/guillaumedsde/samba-ldap) from the docker hub.

## 🙏 Credits

A couple of projects really helped me out while developing this container:

- 💽 [`andrespp/docker-samba-ldap`](https://www.github.com/andrespp/docker-samba-ldap) for helpful inspiration
- 🏁 [s6-overlay](https://github.com/just-containers/s6-overlay) A simple, relatively small yet powerful set of init script for managing processes (especially in docker containers)
- 🐋 The [Docker](https://github.com/docker) project (of course)
