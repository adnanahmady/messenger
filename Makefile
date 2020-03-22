up:
	@docker-compose up -d

down:
	@docker-compose down

restart:
	@docker-compose down --volumes && docker-compose up -d

build:
	@docker-compose up -d --build --remove-orphans

clean:
	@docker-compose exec app php artisan migrate:fresh --seed

