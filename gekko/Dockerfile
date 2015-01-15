FROM debian:stable

RUN apt-get update && apt-get install -y python-software-properties && add-apt-repository ppa:chris-lea/node.js \
	&& sed -i 's/wheezy/lucid/' /etc/apt/sources.list.d/chris-lea-node_js-wheezy.list \
	&& apt-get update \
	&& apt-get install -y nodejs npm git nano \
	&& apt-get clean
RUN mkdir /var/projects && cd /var/projects \
	&& git clone git://github.com/askmike/gekko.git && cd gekko && npm install

# Define working directory.
WORKDIR /var/projects/gekko

# Define default command.
CMD ["nodejs", "gekko.js"]
