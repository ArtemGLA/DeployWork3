FROM ubuntu:latest

# Устанавливаем build-essential
RUN apt-get update && apt-get install -y build-essential 

COPY ItalianCode.deb /tmp/app.deb
RUN dpkg -i /tmp/app.deb 

# Полный путь
CMD ["/usr/bin/hello"]
