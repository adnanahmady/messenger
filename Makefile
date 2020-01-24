up:
	@docker-compose up -d

down:
	@docker-compose down

restart:
	@docker-compose down --volumes && docker-compose up -d
