FROM debian:stable

RUN apt-get update && apt-get install -y python-software-properties && add-apt-repository ppa:chris-lea/node.js \
	&& sed -i 's/wheezy/lucid/' /etc/apt/sources.list.d/chris-lea-node_js-wheezy.list \
	&& apt-get update \
	&& apt-get install -y nodejs npm git nano build-essential \
	&& apt-get clean
RUN mkdir /var/projects && cd /var/projects \
	&& git clone https://github.com/shadww/cryptrade.git ctrade && cd ctrade && npm install \
	&& apt-get -y remove build-essential && apt-get -y autoremove \
	&& apt-get clean

WORKDIR /var/projects/ctrade

CMD cd /var/projects/ctrade \
	&& node_modules/.bin/iced cryptrade.coffee ichimoku.coffee
