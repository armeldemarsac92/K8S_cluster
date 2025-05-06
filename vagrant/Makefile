# Chemins
VAGRANT_DIR := $(CURDIR)
BOX_DIR := $(VAGRANT_DIR)/boxes

VMS := dhcp_server frontend_server backend_server database_server control_server

.PHONY: all up halt destroy status ssh clean boxes


up:
	vagrant up

halt:
	vagrant halt

destroy:
	vagrant destroy -f

status:
	vagrant status

boxes:
	vagrant box add frontend_server $(BOX_DIR)/machine_1.box || true
	vagrant box add database_server $(BOX_DIR)/machine_2.box || true
	vagrant box add backend_server $(BOX_DIR)/machine_3.box || true
	vagrant box add control_server $(BOX_DIR)/machine_4.box || true

ssh:
	@if [ -z "$(VM)" ]; then \
		echo "Usage: make ssh VM=<vm_name>"; \
		echo "Exemples: $(VMS)"; \
	else \
		vagrant ssh $(VM); \
	fi

clean:
	find . -name "*.retry" -delete
