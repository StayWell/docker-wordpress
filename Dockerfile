FROM wordpress:5.2.2

COPY start.sh /usr/local/bin/

ENTRYPOINT ["start.sh"]