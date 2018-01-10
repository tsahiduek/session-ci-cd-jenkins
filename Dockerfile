FROM ruby:2.1-onbuild

RUN mkdir /source

WORKDIR /source
ADD app/ /source
EXPOSE 5005
CMD ["bundle install"]
CMD ["./server.rb"]