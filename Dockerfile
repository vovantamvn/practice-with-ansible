FROM debian:11

RUN apt update && \
  apt install openssh-server python3 -y && \
  sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config && \
  sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
  mkdir /var/run/sshd && \
  rm -rf /var/lib/apt/lists/*

COPY id_rsa.pub /root/.ssh/authorized_keys

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
