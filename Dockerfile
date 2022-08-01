FROM ghcr.io/robertkielty/test-infra/hook-1eb1aded4295c31cc560eb5b2f39bd36:latest
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
