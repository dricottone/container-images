FROM registry.intra.dominic-ricottone.com/srht-todo-core:latest

USER root

RUN apk add --no-cache postfix

USER postfix

CMD ["todosrht-lmtp"]

