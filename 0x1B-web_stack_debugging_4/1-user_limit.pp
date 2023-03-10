# Changing the OS configuration

add holberton
su - holberton
sudo bash -c "echo '* - nofile 10240' >> /etc/security/limits.conf"
