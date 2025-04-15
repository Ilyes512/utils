# Latest version of Alpine image: https://hub.docker.com/_/alpine?tab=tags
FROM alpine:3.20.3

RUN apk add --no-cache --upgrade --no-progress \
        bash~=5.2 \
        curl~=8.12 \
        wget~=1.24 \
        jq~=1.7 \
        yq~=4.44 \
        sed~=4.9 \
        pcre-tools~=8.45 \
        openssh-keygen~=9.7 \
    && apk add --no-cache --upgrade --no-progress --virtual .usermod \
        shadow~=4.15 \
    && usermod --shell /bin/bash root \
    && for i in $(seq 500 1999); do echo "user:x:$i:$i::/home:/sbin/nologin"; done >> /etc/passwd \
    && apk del .usermod

CMD ["/bin/bash"]
