FROM php:8-cli-alpine

ENV SCHEDULE="*/10 * * * *" \
    CRON_CMD="php /app/update.php" \
    DOMAINLIST="" \
    CUSTOMER_ID="" \
    API_KEY="" \
    API_PASSWORD=""

ADD app/ /app
ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/crond", "-f"]

SHELL ["/bin/ash"]