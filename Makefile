install-pip:
	python3 -m ensurepip --upgrade

setup-ansible:
	pip3 install -U pip setuptools
	pip3 install ansible

config:
	 ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook ~/code/github/ws-config/playbook.yaml -v