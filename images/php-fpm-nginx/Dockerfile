FROM php72-ubuntu

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
	nginx vim composer php-fpm supervisor expect
RUN mkdir -p /run/php
COPY nginx.conf /etc/nginx/
COPY supervisord.conf /etc/supervisor/supervisord.conf
COPY xdebug.ini /etc/php/7.2/cli/conf.d/20-xdebug.ini

ADD scripts/start.sh /start.sh
ADD scripts/script.exp /home/script.exp
RUN pecl channel-update pecl.php.net
RUN /home/script.exp
COPY swoole.ini /etc/php/7.2/cli/conf.d/20-swoole.ini

EXPOSE 443 80

CMD ["bash","/start.sh"]
