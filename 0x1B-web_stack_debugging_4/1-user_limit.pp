# Changing the OS configuration

adduser holberton
su - holberton
sudo bash -c "echo '* - nofile 10240' >> /etc/security/limits.conf"
