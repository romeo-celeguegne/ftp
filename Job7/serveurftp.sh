apt-get update
apt-get upgrade
apt-get install sudo
apt-get install proftpd

useradd -m merry
passwd merry kalimac
useradd -m pippin

passwd pippin secondbreakfast
cp proftpd.conf /etc/proftpd/conf.d
cp tls.conf /etc/proftpd/conf.d
apt-get install open-ssl
ln -sf /etc/proftpd/conf.d/proftpd.conf /etc/proftpd/proftpd.conf
mkdir /etc/proftpd/ssl
openssl req -new -x509 -keyout /etc/proftpd/ssl/proftpd.key.pem -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem
chmod 600 /etc/proftpd/ssl/proftpd.*
ln -sf /etc/proftpd/conf.d/tls.conf /etc/proftpd/tls.conf
sudo service proftpd restart

