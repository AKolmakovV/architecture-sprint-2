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

6. Тестируем
```shell
sudo ./scripts/test.sh
```

6. Удаляем все
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