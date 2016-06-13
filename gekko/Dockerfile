FROM debian:stable

RUN apt-get update && apt-get install -y curl bash
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update \
	&& apt-get install -y nodejs git nano
RUN apt-get install -y binutils build-essential
RUN mkdir /var/projects && cd /var/projects && git clone git://github.com/askmike/gekko.git && cd gekko && npm install
RUN apt-get -y remove python2.7\
	&& rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* \
	&& rm -rf /usr/lib/locale \
	&& rm -rf /usr/lib/gcc \
	&& rm -rf /usr/share/locale

# Define working directory.
WORKDIR /var/projects/gekko

# Define default command.
CMD ["nodejs", "gekko.js"]
