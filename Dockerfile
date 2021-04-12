FROM nginx:latest

RUN apt-get update && apt-get install -y ssh
RUN echo "root:Docker!" | chpasswd
RUN mkdir /run/sshd

WORKDIR /app
COPY ./app /app
COPY app/sshd_config /etc/ssh/

EXPOSE 80 2222

CMD /app/scripts/startup.sh