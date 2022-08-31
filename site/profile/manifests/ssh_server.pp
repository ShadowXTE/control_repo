class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCrkkY8B/y9/XhOdpLhI7TsKXX2x9YS1ucNBTTEtJaiRDxRCN1dkvRSjDwU/bEizsHsX/a8cpcMhphChvRM5HGCauJgClz1fT04Gj222hvgT9xSWsGjheQCtGxfg9otB06edgE96DCGmXmfLOqS6/AdeJI0fhJKrkQehcYQCtDj6eH5pBhhTOEz39mpj0A+Ocaq7bnDrY+fhkUNPysNBGxNlbmHHmVDoHZJw3I8C3rWVEaIom76CirWTQnUdavuevYFBvtY7sxsIGKjfm0Ygr3e5F2+9AFAwM6XMHBBvi3L2cJ3jgG7P/NcWfNiLM91xbtbBBJzhodDcq5rWGUInL2B',
	}  
}
