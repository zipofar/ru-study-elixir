.PHONY: lint lint_ci test deps check check_ci

lint_ci:
	mix quality.ci

lint:
	mix quality

test:
	MIX_ENV=test mix test

deps: 
	mix deps.get
	mix deps.compile

check: deps lint test

check_ci: deps lint_ci test

