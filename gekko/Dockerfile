FROM debian:stable

RUN apt-get update \
	&& apt-get update \
	&& apt-get install -y nodejs npm git nano \
	&& mkdir /var/projects && cd /var/projects \
	&& git clone git://github.com/askmike/gekko.git && cd gekko && npm install \
	&& apt-get -y purge git binutils build-essential python2.7 perl \
	&& apt-get -y autoclean && apt-get -y clean && rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* \
	&& rm -rf /usr/lib/locale \
	&& rm -rf /usr/lib/gcc \
	&& rm -rf /usr/share/locale

# Define working directory.
WORKDIR /var/projects/gekko

# Define default command.
CMD ["nodejs", "gekko.js"]
