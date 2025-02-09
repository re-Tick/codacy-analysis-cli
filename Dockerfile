FROM alpine:3.19.6
RUN apk add --no-cache --update bash docker openjdk8
WORKDIR /workdir
COPY --chown=root:root cli/target/universal/stage /workdir
USER root
ENTRYPOINT ["/workdir/bin/codacy-analysis-cli"]
CMD []
