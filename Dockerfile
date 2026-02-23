FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential 

COPY ItalianCode.deb /tmp/app.deb
RUN dpkg -i /tmp/app.deb 

CMD ["/usr/bin/hello"]
