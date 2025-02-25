# pymongo-api

## Как запустить

1. Запускаем mongodb и приложение

```shell
sudo docker compose up -d
```

2. Инициализируем конфигурационный сервер:

```shell
sudo ./scripts/init-config.sh
```

3. Настраиваем шарды:
```shell
sudo ./scripts/init-shards.sh
```

4. Настраиваем роутер:
```shell
sudo ./scripts/init-router.sh
```

5. Заполняем нашу mongodb данными:
```shell
sudo ./scripts/mongo-fill-data.sh
```

6. Протестировать MongoDB+шардирование+репликацию возможно командой:
```shell
sudo ./scripts/test.sh
```

7. Проверить скорость выполнения запросов можно командой:
```shell
sudo ./scripts/perfomance_test.sh
```

8. Удалить все артефакты запуска и работы контейнеров возможно командой:
```shell
sudo ./scripts/remove-all.sh
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