FROM ubuntu

RUN apt-get update \
	&& apt-get install -y nodejs npm git nano
RUN mkdir /var/projects && cd /var/projects \
	&& git clone git://github.com/askmike/gekko.git && cd gekko && npm install
RUN cd /var/projects/gekko && perl -p -i -e 's/debug = true/debug = false/' config.js \
	&& perl -p -i -e "s/exchange: 'bitstamp'/exchange: 'BTCe'/" config.js \
	&& perl -p -i -e "s/asset: 1/asset: 0/" config.js

# Define working directory.
WORKDIR /var/projects/gekko

# Define default command.
CMD ["/usr/bin/nodejs /var/projects/gekko/gekko.js"]

# Expose ports.
# EXPOSE xxxx
