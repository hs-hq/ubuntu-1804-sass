# Container for developing Sass/Scss at Holberton School
FROM holbertonschool/ubuntu-1804-python37
MAINTAINER Guillaume Salva <guillaume@holbertonschool.com>

RUN apt-get update

# Install Ruby 2.3
RUN apt-get install -y ruby2.5 ruby2.5-dev

# Install Sass
RUN gem install sass -v 3.7.4

RUN sed -i 's/# set bell-style none/set bell-style none/g' /etc/inputrc

ADD run.sh /etc/sandbox_run.sh
RUN chmod u+x /etc/sandbox_run.sh

# start run!
CMD ["./etc/sandbox_run.sh"]
