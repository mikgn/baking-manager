FROM ruby:3.0.3-alpine3.14

RUN apk --update add build-base \
                     nodejs \
                     tzdata \
                     postgresql-dev \
                     postgresql-client \
                     libxslt-dev \
                     libxml2-dev \
                     yarn

RUN gem install bundler -v 2.3.3

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries

RUN bundle install

COPY package.json yarn.lock  ./

RUN yarn install --check-files

COPY . ./

EXPOSE 3000

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
