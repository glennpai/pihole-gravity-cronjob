FROM bash

WORKDIR /app

RUN apk add --no-cache curl jq

RUN addgroup -S user && adduser -S user -G user
RUN chown -R user:user /app

COPY --chown=user:user refresh-gravity .

USER user

ENTRYPOINT ["bash", "/app/refresh-gravity"]

LABEL org.opencontainers.image.source https://github.com/glennpai/refresh-gravity-cronjob
