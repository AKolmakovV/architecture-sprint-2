# Задание №1
./architecture-sprint-2/mongo-sharding

# Задание №2
./architecture-sprint-2/mongo-sharding-repl

# Задание №3
./architecture-sprint-2/sharding-repl-cache

# Схема и описание по заданиям 1, 2, 3, 4, 5, 6 (на странице "Итоговая схема" результат всей работы)
./task1.drawio

Для проверки итогового задания, перейдите в каталог ./architecture-sprint-2/ и следуйте инструкции из файла README.md

# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Заполняем mongodb данными

```shell
./scripts/mongo-init.sh
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs