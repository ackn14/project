.PHONY: ps
ps:
		docker ps

.PHONY: init
init:
		docker-compose up -d --build
		@make composer-install
		@make npm-install
		docker-compose exec app php artisan key:generate
		docker-compose exec app php artisan jwt:secret
		@echo Initialize Completed !!

.PHONY: composer-install
composer-install:
		docker-compose exec app composer install

.PHONY: npm-install
npm-install:
		docker-compose exec app npm install --no-optional
