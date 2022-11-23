# Latest version of Alpine image: https://hub.docker.com/_/alpine?tab=tags
FROM alpine:3.17.0

RUN apk add --no-cache --upgrade --no-progress \
        bash~=5.1 \
        curl~=7.83 \
        wget~=1.21 \
        jq~=1.6 \
        yq~=4.25 \
        sed~=4.8 \
        pcre-tools~=8.45 \
        openssh-keygen~=9.0 \
    && apk add --no-cache --upgrade --no-progress --virtual .usermod \
        shadow~=4.10 \
    && usermod --shell /bin/bash root \
    && for i in $(seq 500 1999); do echo "user:x:$i:$i::/home:/sbin/nologin"; done >> /etc/passwd \
    && apk del .usermod

CMD ["/bin/bash"]
