FROM python:3-alpine

ENV PORT=80

WORKDIR /root

RUN apk add --no-cache git gcc musl-dev libressl-dev libffi-dev \ 
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir updog

COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
