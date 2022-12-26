ping_hosts:
		ansible --private-key ~/.ssh/id_rsa all -i "192.168.1.2, 192.168.1.3" -u vagrant -m ping
check_uptime:
		ansible --private-key ~/.ssh/id_rsa all -i "192.168.1.2, 192.168.1.3" -u vagrant -m command -a "uptime"