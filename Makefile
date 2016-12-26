up:
	rm -rfv ./rails/tmp
	docker-compose build && docker-compose up

crean:
	rm -rfv ./rails/tmp

db_migrate:
	docker-compose exec rails rake db:migrate

db_reset:
	docker-compose exec rails rake db:migrate:reset
