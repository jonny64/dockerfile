FROM debian:stable

RUN apt-get update && apt-get install -y ruby build-essential nano git \
	&& echo 'deb http://http.us.debian.org/debian/ testing main non-free contrib' >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y ruby ruby-dev build-essential bison openssl libreadline6 \
		libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev \
		libyaml-dev libxml2-dev autoconf libc6-dev ncurses-dev automake libtool \
		libcurl3 libcurl3-gnutls libcurl4-openssl-dev \
	&& apt-get clean
RUN mkdir /var/projects && cd /var/projects \
	&& git clone https://github.com/hstove/rbtc_arbitrage && cd rbtc_arbitrage
RUN gem install rbtc_arbitrage

# Define working directory.
WORKDIR /var/projects/rbtc_arbitrage

# Define default command.
CMD rbtc --repeat 300 --volume 1 --buyer btce --seller bitstamp
