FROM ubuntu:latest

# Устанавливаем build-essential и другие необходимые пакеты
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY ItalianCode.deb /tmp/app.deb

# Устанавливаем пакет
RUN dpkg -i /tmp/app.deb || apt-get update && apt-get install -f -y && dpkg -i /tmp/app.deb

# Указываем полный путь к программе!
CMD ["/usr/bin/hello", "--test"]
