FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /p5
COPY Gemfile /p5/Gemfile
RUN bundle install
#ADD . /p5

COPY docker-entrypoint.sh /p5/

ENTRYPOINT ["/p5/docker-entrypoint.sh"]


# Set defaults to run the image
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
