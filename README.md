# practice-with-ansible

## Getting started

To follow this guide, you need to install `docker`, `ansible` on your computer.

### Build docker image

```bash
docker build -t ansible_server .
```

You should build the image with the name `ansible_server`. If you don't, you need to update your image name for all guides.

### Replace ssh key

You can use `ssh-keygen` to create new keys, but keep in mind that you should create with the same name (`id_ras` and `id_rsa.pub`).
