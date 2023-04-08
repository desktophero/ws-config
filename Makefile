install-pip:
	python3 -m ensurepip --upgrade

setup-ansible:
	pip3 install -U pip setuptools
	pip3 install ansible

config:
	 ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook ~/code/github/ws-config/playbook.yaml -v

docker-setup:
	colima start --arch x86_64 -d 120 -c 4 -m 8 -r docker -l

k3s-setup:
	k3d cluster create colima

k3s-clean:
	k3d cluster delete colima