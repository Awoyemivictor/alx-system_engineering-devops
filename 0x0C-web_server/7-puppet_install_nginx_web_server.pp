#!/usr/bin/env bash

# Time to practice configuring your server with Puppet! Just as you 
# did before, we’d like you to install and configure an Nginx server
# using Puppet instead of Bash. To save time and effort, you should
# also include resources in your manifest to perform a 301 redirect
# when querying /redirect_me.

# Requirements:

# Nginx should be listening on port 80
# When querying Nginx at its root / with a GET request (requesting
# a page) using curl, it must return a page that contains the
# string Hello World!
# The redirection must be a “301 Moved Permanently”
# Your answer file should be a Puppet manifest containing commands
# to automatically configure an Ubuntu machine to respect above
# requirements

package {
	'nginx':
	ensure => installed,
}

file {'/var/www/html/index.nginx-debian.html':
	content => 'Hello World!',
}

file_line {'configure redirection':
	path => '/etc/nginx/sites-available/default',
	after => 'server_name _;',
	line => "\n\tlocation /redirect_me {\n\t\treturn 301 https://youtu.be/dQw4w9WgXcQ;\n\t}\n",

}

service {'nginx':
	ensure => running,	
}
