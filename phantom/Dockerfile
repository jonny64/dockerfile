FROM debian:stable

RUN echo 'deb http://http.us.debian.org/debian/ unstable non-free contrib main' >> /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y phantomjs git nano \
	&& apt-get clean
RUN mkdir /var/projects && mkdir /var/projects/phantomjs && cd /var/projects/phantomjs
	# && git clone some-url

# Define working directory.
WORKDIR /var/projects

ADD testcase.js /var/projects/phantomjs/testcase.js

# Define default command.
CMD ["phantomjs", "/var/projects/phantomjs/testcase.js"]

# Expose ports.
# EXPOSE xxxx
