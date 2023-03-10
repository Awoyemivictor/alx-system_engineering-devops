# Changing the OS configuration

adduser holberton
su - holberton
sudo bash -c "echo 'ulimit -n 32678' >> /etc/security/limits.conf"
