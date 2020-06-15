FROM wordpress:5.4.2

COPY start.sh /usr/local/bin/

ENTRYPOINT ["start.sh"]
