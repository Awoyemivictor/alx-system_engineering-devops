# Changing the OS configuration

adduser holberton
su - holberton
echo 'ulimit -n 8192' >> /etc/security/limits.conf
