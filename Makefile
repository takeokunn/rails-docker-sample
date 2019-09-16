build:
	docker-compose build

install:
	docker-compose run --rm web bundle install
	docker-compose run --rm web bundle exec rails db:drop db:create RAILS_ENV=development
	docker-compose run --rm web bundle exec rails db:drop db:create RAILS_ENV=test

run:
	rm -rf tmp/pids/server.pid
	docker-compose run --rm --service-ports web

rubocop:
	docker-compose run --rm web bundle exec rubocop --auto-correct
