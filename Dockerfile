FROM alpine:latest

COPY run.sh /usr/run.sh

RUN apk update && apk add jq sed bash
RUN chmod +x /usr/run.sh

ENTRYPOINT [ "/usr/run.sh" ]