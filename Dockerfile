FROM alpine:3.9

ENV SOURCE ""
ENV DESTINATION ""
ENV SOURCE_CREDENTIALS ""
ENV DESTINATION_CREDENTIALS ""

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --no-cache skopeo bash && \
    addgroup -S app && adduser -S app -G app && \
    mkdir /app

COPY entrypoint.sh /app/

WORKDIR /app
USER app
ENTRYPOINT ["/app/entrypoint.sh"]
