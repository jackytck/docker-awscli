FROM alpine:latest

RUN apk --update add python py-pip zip groff less bash curl git openssh-client && \
    pip install -U awscli && \
    apk --purge -v del py-pip && \
    rm -rf `find / -regex '.*\.py[co]'`

WORKDIR /aws
ENTRYPOINT ["aws"]
