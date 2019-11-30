FROM alpine/git:1.0.7

LABEL maintainer "Vito Van <awesomevito@live.com>"

USER root

COPY sync.sh /bin/

ENTRYPOINT ["/bin/sh"]

CMD ["/bin/sync.sh"]
