FROM python:3.9.2-alpine3.13 as build
WORKDIR /wheels
RUN apk add --no-cache \
    ncurses-dev \
    build-base

FROM python:3.9.2-alpine3.13
WORKDIR /home/youtube
RUN adduser -D youtube
RUN apk add ffmpeg
RUN mkdir /home/youtube/output

RUN pip3 install youtube-dl \
    && rm -rf /wheels \
    && rm -rf /root/.cache/pip/*

COPY --chown=youtube:youtube youtube.sh /home/youtube/
USER youtube

ENTRYPOINT [ "sh", "youtube.sh" ]
