# Generate the host and id SSH keys
ssh-keygen:
	mkdir -p keys
	ssh-keygen -t ed25519 -f keys/ssh_host_ed25519_key < /dev/null
	ssh-keygen -t rsa -b 4096 -f keys/ssh_host_rsa_key < /dev/null
	ssh-keygen -t ed25519 -f keys/id_ed25519 < /dev/null
	ssh-keygen -t rsa -b 4096 -f keys/id_rsa < /dev/null

# Start the SFTP server
start:
	docker compose up -d

# Remove old mount files
clean-mount:
	rm -r mount/*
