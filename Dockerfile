FROM alpine:3.15.0

RUN apk add --no-cache --upgrade --no-progress \
        bash~=5.1 \
        curl~=7.80 \
        wget~=1.21 \
        jq~=1.6 \
        yq~=4.14 \
        sed~=4.8 \
        pcre-tools~=8.45 \
    && apk add --no-cache --upgrade --no-progress --virtual .usermod \
        shadow~=4.8 \
    && usermod --shell /bin/bash root \
    && apk del .usermod

CMD ["/bin/bash"]
