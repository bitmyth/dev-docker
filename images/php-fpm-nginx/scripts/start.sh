sed -i "s/;clear_env = no/clear_env = no/" /etc/php/7.2/fpm/pool.d/www.conf


exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
