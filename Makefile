build:
	docker-compose build
ci-lint:
	docker-compose run --no-deps --rm test bash -c 'ci:lint'
lint-test:
	docker-compose run --no-deps --rm test bash -c 'npm run lint'
unit-test:
	docker-compose run --no-deps --rm test bash -c 'npm run test:unit'
e2e-test:
	docker-compose run --no-deps --rm test bash -c 'npm run test:e2e'
publish:
	docker-compose run --no-deps --rm test bash -c 'npm run build && npx semantic-release'
