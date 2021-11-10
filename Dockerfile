FROM alpine:3.14.2

RUN apk add --no-cache --upgrade --no-progress \
    bash=5.1.4-r0 \
    curl=7.79.1-r0 \
    jq=1.6-r1 \
    sed=4.8-r0

CMD ["/bin/bash"]
