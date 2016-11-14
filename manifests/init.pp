class asennus {

	package {"apache2":
	ensure => "installed",
	allowcdrom => "true",
	}

	file {"/var/www/html/index.html":
	content => "Welcome.\n",
	}

	file { '/etc/apache2/mods-enabled/userdir.conf':
	ensure => 'link',
	target => '../mods-available/userdir.conf',
	notify => Service["apache2"],
	}

	file { '/etc/apache2/mods-enabled/userdir.load':
	ensure => 'link',
	target => '../mods-available/userdir.load',
	notify => Service["apache2"],
	}

	service {"apache2":
	ensure => "true",
	enable => "true",
	# provider => "systemd",
	}

}

