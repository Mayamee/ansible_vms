ping_hosts:
		ansible --private-key ~/.ssh/id_rsa v_d0 -i inventory.ini -u vagrant -m ping
check_uptime:
		ansible --private-key ~/.ssh/id_rsa v_d0 -i inventory.ini -u vagrant -m command -a "uptime"
copy_file:
		ansible --private-key ~/.ssh/id_rsa v_d0 -i inventory.ini -u vagrant -m ansible.builtin.copy -a "src=/etc/hosts dest=/tmp/hosts"