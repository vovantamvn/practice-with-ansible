# This guide will help you to connect to the server by ssh

## Run a container

```bash
docker run --rm -d -it -p 8000:22 ansible_server
```

## Ping to the container using ansible

```bash
ansible -i ./hosts --private-key ../id_rsa -m ping all
```

By default ansible will read inventory in the /etc/ansible/hosts file. But I recommend that we should create a new one for each project.

```text
[server]
127.0.0.1 ansible_ssh_user=root ansible_ssh_port=8000
```

- `ansible_ssh_user`: We need to specify the root user to connect.
- `ansible_ssh`: The ssh port, because we bind port 8000 in our computer to port 22 in the container. So, we need to specify it.
