FROM alpine:3.20

RUN apk --no-cache add \
        sudo \
        python3\
        py3-pip \
        openssl \
        ca-certificates \
        sshpass \
        openssh-client \
        rsync \
        git && \
    apk --no-cache add --virtual build-dependencies \
        python3-dev \
        libffi-dev \
        musl-dev \
        gcc \
        cargo \
        build-base && \
    find /usr/lib/python* -name "EXTERNALLY-MANAGED" -exec rm {} \;

RUN pip3 install --upgrade pip wheel johnnydep

CMD [ "/bin/ash" ]
