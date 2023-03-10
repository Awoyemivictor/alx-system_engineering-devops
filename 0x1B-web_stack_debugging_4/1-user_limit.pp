# Changing the OS configuration

#!/usr/bin/ruby
adduser holberton
su - holberton
echo 'pe-puppet soft nofile 32678' >> /etc/security/limits.conf
echo 'pe-puppet hard nofile 32678' >> /etc/security/limits.conf

