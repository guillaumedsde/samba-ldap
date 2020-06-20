#!/bin/sh

if [ "${CI_COMMIT_REF_NAME}" = "master" ]; then
    TAGS=" -t ${CI_REGISTRY_USER}/samba-ldap:${VERSION} -t ${CI_REGISTRY_USER}/samba-ldap:latest "
else
    # cleanup branch name
    BRANCH="$(echo "${CI_COMMIT_REF_NAME}" | tr / _)"
    # tag image with branch name
    TAGS="-t ${CI_REGISTRY_USER}/samba-ldap:${BRANCH}"
fi

docker buildx build . \
    --platform="${BUILDX_PLATFORM}" \
    --build-arg BUILD_DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
    --build-arg VCS_REF=$(git rev-parse --short HEAD) \
    ${TAGS} \
    --push
