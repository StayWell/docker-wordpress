#!/bin/sh

# recommended WordPress settings for Divi
# https://www.canagon.com/blog/divi-recommended-configuration-for-server-and-hosting-environment
# https://www.georgenicolaou.me/divi-requirements/
cat > "/var/www/html/.htaccess" << EOF
php_value upload_max_filesize ${UPLOAD_MAX_FILESIZE:-256M}
php_value post_max_size ${POST_MAX_SIZE:-512M}
php_value memory_limit ${MEMORY_LIMIT:-4096M}
php_value max_execution_time ${MAX_EXECUTION_TIME:-300}
php_value max_input_time ${MAX_INPUT_TIME:-600}
php_value max_input_vars ${MAX_INPUT_VARS:-3000}
php_value output_buffering ${OUTPUT_BUFFERING:-9096}
EOF

chown www-data:www-data /var/www/html/.htaccess

mkdir -p /var/www/html/wp-content
chown -R www-data:www-data /var/www/html/wp-content

docker-entrypoint.sh apache2-foreground
