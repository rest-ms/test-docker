apt-get install apache2 -y
mkdir /var/www/auth.svc.local
mkdir /var/www/currency.svc.local
sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf
sed -i 's/Require all denied/Require all granted/g' /etc/apache2/apache2.conf
a2ensite test.site.local
a2ensite auth.svc.local
a2ensite currency.svc.local
a2enmod proxy
a2enmod proxy_http
service apache2 reload