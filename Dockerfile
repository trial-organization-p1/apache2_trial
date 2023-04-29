FROM ubuntu
RUN apt-get update && apt-get install -y curl && \
	apt install -y apache2 
COPY download.txt /var/www/web_tr1/	
COPY index.html /var/www/web_tr1/
COPY web_tr1.conf /etc/apache2/sites-available/
RUN a2ensite web_tr1.conf
EXPOSE 999
CMD apachectl -D FOREGROUND
