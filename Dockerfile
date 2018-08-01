FROM alpine:edge

RUN apk update && apk add cargo cmake docker file make perl rust openssl1.0-dev && rm -rf /var/cache/apk/*
RUN RUSTFLAGS="--cfg procmacro2_semver_exempt" cargo install cargo-tarpaulin
