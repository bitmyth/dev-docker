FROM myubuntu

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
	nginx vim composer supervisor
COPY nginx.conf /etc/nginx/
COPY supervisord.conf /etc/supervisor/supervisord.conf
ADD scripts/start.sh /start.sh

EXPOSE 443 80

CMD ["bash","/start.sh"]
