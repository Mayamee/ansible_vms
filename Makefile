ping_hosts:
		ansible --private-key ~/.ssh/id_rsa all -i inventory.ini -u vagrant -m ping
check_uptime:
		ansible --private-key ~/.ssh/id_rsa all -i inventory.ini -u vagrant -m command -a "uptime"