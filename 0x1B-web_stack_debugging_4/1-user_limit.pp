# Changing the OS configuration

 { "holberton":
	ensure => "present",
	su - holberton,
	sudo bash -c "echo '* - nofile 10240' >> /etc/security/limits.conf",
}
