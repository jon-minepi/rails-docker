FROM ruby

WORKDIR /home/dev
#WORKDIR /home/$APPNAME

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update
RUN apt-get install -y autoconf \
bison \
build-essential \
g++ \
gcc \
git \
libffi-dev \
libgconf-2-4 \
libgdbm-dev \
libncurses5-dev \
libreadline-dev \
libsqlite3-dev \
libssl-dev \
libxi6 \
libyaml-dev \
make \
sqlite3 \
xvfb \
zip \
zlib1g-dev

RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
#RUN apt-get install -y npm
RUN npm install --global yarn
#RUN apt-get autoremove -y

#RUN rails new .
#RUN cd $APPNAME
#RUN bundle update && bundle install
ENTRYPOINT [ "/bin/bash" ]

#RUN rails server -p $PORT -b 0.0.0.0
