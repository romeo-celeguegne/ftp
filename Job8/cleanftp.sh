sudo userdel -r merry
sudo userdel -r pippin
sudo apt-get remove --purge openssl
sudo apt-get remove --purge proftpd
sudo apt-get remove --purge sudo
service.ftpd stop
