FROM ruby:2.3.3-alpine

RUN mkdir /myapp
WORKDIR /myapp
COPY ./app/ /myapp
RUN bundle install

CMD ["ruby", "server.rb"]
