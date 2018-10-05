FROM alpine:3.8
LABEL author=geoff.rich@gmail.com

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli s3cmd https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz && \
  mkdir /root/.aws && \
  aws --version && \
  s3cmd --version

ENTRYPOINT []