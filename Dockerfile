# Docker image for a remote SSH server without password (for demo purposes)
# and Docker CLI.

FROM alpine:3.9

RUN apk --update add --no-cache openssh docker python3

RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
RUN echo "root:root" | chpasswd

RUN /usr/bin/ssh-keygen -A
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_key
RUN passwd -d root

RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
RUN echo "PubkeyAuthentication no" >> /etc/ssh/sshd_config

EXPOSE 22
CMD /usr/sbin/sshd -D
