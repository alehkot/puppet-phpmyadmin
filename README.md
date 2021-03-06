puppet-phpmyadmin
=================

A Puppet module that installs phpMyAdmin.

## Sample Usage
Install phpMyAdmin and use the provided configuration defaults:
```puppet
node default {
	class {'phpmyadmin':}
}
```
or
```puppet
node default {
	include phpmyadmin
}
```

Install a diferent version:
```puppet
node default {
	class {'phpmyadmin':
		ensure  => present,
		version => '4.1.3',
	}
}
```

Define a root password:
```puppet
node default {
	class {'phpmyadmin':
		ensure        => present,
		root_password => 'your-password-here',
	}
}
```

Define a apache virtual host:
```puppet
node default {
	class {'phpmyadmin':
		ensure     => present,
		vhost_name => 'phpmyadmin.foo.bar.com',
		vhost_port => '81',
	}
}
```

Uninstall phpMyAdmin:
```puppet
node default {
	class {'phpmyadmin':
		ensure => absent,
	}
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-phpmyadmin/issues)
