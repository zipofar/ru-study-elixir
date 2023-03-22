# Elixir exercises

![CheckAll](https://github.com/DualbootPartnersLLC/ru-study-elixir/actions/workflows/main.yml/badge.svg)

## Запуск проекта

```sh
docker-compose build
docker-compose run --rm elixir-course
```

## Запуск тестов

```sh
docker-compose run --rm elixir-course make test
```

## Запуск линтеров

```sh
docker-compose run --rm elixir-course make check
```

## Задача

1. Сделать форк проекта к себе в аккаунт.

2. В дирректории exercises есть задачи.

  Нужно выбрать задачу, создать ветку и работать в ней.

  По умолчанию все тесты во всех задачах пропускаются. Чтобы начать работу, нужно удалить `@moduletag :skip` из файла соответствующего теста.

  Далее для каждой из задач реализовать недостающие методы так, чтобы все тесты проходили. Дополнительную информацию можно найти в комментарии к тесту.

  Проверять можно запуская `docker-compose run --rm elixir-course make test`

3. После того как все тесты проходят, нужно создать pull request в своем репозитори в `main` и отправить на ревью.