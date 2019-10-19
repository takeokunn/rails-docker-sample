build:
	docker-compose build

install:
	docker-compose run --rm web bundle exec rails db:drop db:create RAILS_ENV=development
	docker-compose run --rm web bundle exec rails db:drop db:create RAILS_ENV=test

rubocop:
	docker-compose run --rm web bundle exec rubocop --auto-correct
