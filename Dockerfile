FROM quay.io/flysangel/alpine:3.18.2
COPY busybox1.35.0 /bin/
COPY index.html /opt/www/
RUN \
  apk update && \
  apk add --no-cache nano sudo bash wget curl git tree grep && \
  chmod +x /bin/busybox1.35.0

ENTRYPOINT ["/bin/busybox1.35.0"]
CMD ["httpd", "-f", "-h", "/opt/www"]
