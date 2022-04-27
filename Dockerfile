# Latest version of Alpine image: https://hub.docker.com/_/alpine?tab=tags
FROM alpine:3.15.4

RUN apk add --no-cache --upgrade --no-progress \
        bash~=5.1 \
        curl~=7.80 \
        wget~=1.21 \
        jq~=1.6 \
        yq~=4.14 \
        sed~=4.8 \
        pcre-tools~=8.45 \
        openssh-keygen~=8.8 \
    && apk add --no-cache --upgrade --no-progress --virtual .usermod \
        shadow~=4.8 \
    && usermod --shell /bin/bash root \
    && for i in $(seq 500 1999); do echo "user:x:$i:$i::/home:/sbin/nologin"; done >> /etc/passwd \
    && apk del .usermod

CMD ["/bin/bash"]
