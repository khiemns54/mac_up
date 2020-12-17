.SILENT: run
run:
	sh start.sh
	cd playbook \
		&& ansible-galaxy install -r requirements.yml -p .roles \
		&& ansible-playbook main.yml -i inventory \
		&& cd ..
	exec /bin/zsh -l
