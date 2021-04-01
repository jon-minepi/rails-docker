ROM ruby

WORKDIR /home/app

ENV PORT 3000
ENV APPNAME 'blog'
EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update -qq
RUN apt-get install -y nodejs sqlite3
#RUN apt-get install -y npm
#RUN npm install --global yarn
RUN apt-get autoremove -y


#RUN cd $APPNAME
#RUN bundle update && bundle install
#RUN rails server -p $PORT -b 0.0.0.0
ENTRYPOINT [ "/bin/bash" ]