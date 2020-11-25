FROM wordpress:5.5.3

COPY start.sh /usr/local/bin/

ENTRYPOINT ["start.sh"]
