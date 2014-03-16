FROM phusion/baseimage

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install pyrax

ADD rackspace-dns-presence /bin/rackspace-dns-presence

CMD /bin/rackspace-dns-presence
