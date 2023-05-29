FROM registry.intra.dominic-ricottone.com/srht-git-core:latest

USER root

RUN apk add --no-cache openssh

COPY ssh* /etc/ssh/
RUN chmod 600 /etc/ssh/*_key
RUN chmod 644 /etc/ssh/*_key.pub

RUN touch /var/log/gitsrht-shell
RUN chmod 666 /var/log/gitsrht-shell

RUN touch /var/log/gitsrht-update-hook
RUN chmod 666 /var/log/gitsrht-update-hook

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]

