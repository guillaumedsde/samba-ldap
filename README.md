# 🐋 + 📁 + 👤 guillaumedsde/samba-ldap

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/guillaumedsde/samba-ldap)](https://gitlab.com/guillaumedsde/samba-ldap/-/pipelines)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/guillaumedsde/samba-ldap)](https://gitlab.com/guillaumedsde/samba-ldap/-/pipelines)
[![Website](https://img.shields.io/website?label=documentation&url=https%3A%2F%2Fguillaumedsde.gitlab.io%2Fsamba-ldap%2F)](https://guillaumedsde.gitlab.io/samba-ldap/)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/guillaumedsde/samba-ldap?label=version)](https://github.com/guillaumedsde/samba-ldap/releases)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/9a0f16575d634e449a5b31c1e7439779)](https://www.codacy.com/manual/guillaumedsde/samba-ldap?utm_source=gitlab.com&utm_medium=referral&utm_content=guillaumedsde/samba-ldap&utm_campaign=Badge_Grade)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/guillaumedsde/samba-ldap)](https://hub.docker.com/r/guillaumedsde/samba-ldap)
[![Docker Pulls](https://img.shields.io/docker/pulls/guillaumedsde/samba-ldap)](https://hub.docker.com/r/guillaumedsde/samba-ldap)
[![GitHub stars](https://img.shields.io/github/stars/guillaumedsde/samba-ldap?label=Github%20stars)](https://github.com/guillaumedsde/samba-ldap)
[![GitHub watchers](https://img.shields.io/github/watchers/guillaumedsde/samba-ldap?label=Github%20Watchers)](https://github.com/guillaumedsde/samba-ldap)
[![Docker Stars](https://img.shields.io/docker/stars/guillaumedsde/samba-ldap)](https://hub.docker.com/r/guillaumedsde/samba-ldap)
[![GitHub](https://img.shields.io/github/license/guillaumedsde/samba-ldap)](https://github.com/guillaumedsde/samba-ldap/blob/master/LICENSE.md)

Debian bullseyes based docker image for SAMBA with ldap authentication.

This image is based on the work of [`andrespp/docker-samba-ldap`](https://www.github.com/andrespp/docker-samba-ldap)

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

## 🙏 Credits

A couple of projects really helped me out while developing this container:

- 💽 [`andrespp/docker-samba-ldap`](https://www.github.com/andrespp/docker-samba-ldap) for helpful inspiration
- 🏁 [s6-overlay](https://github.com/just-containers/s6-overlay) A simple, relatively small yet powerful set of init script for managing processes (especially in docker containers)
- 🐋 The [Docker](https://github.com/docker) project (of course)
