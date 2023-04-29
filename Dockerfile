FROM ubuntu
RUN apt-get update && apt-get install -y curl && \
	apt install apache2 
RUN cp download.txt /var/www/web_tr1/	
RUN cp index.html /var/www/web_tr1/
RUN cp web_tr1.conf /etc/apache2/sites-available/
RUN a2ensite web_tr1.conf && sudo ufw enable && service apache2 reload
