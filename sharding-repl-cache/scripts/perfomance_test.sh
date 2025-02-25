#!/bin/bash

###
# Проверяем скорость выполнения запросов после включения кэширования
###

echo -n "Первый запрос за количеством документов: "
curl -o /dev/null -s -w %{time_total} http://localhost:8080/helpdoc/count

sleep 3s
echo -n -e "\nПовторный запрос за количеством документов: "
curl -o /dev/null -s -w %{time_total} http://localhost:8080/helpdoc/count
sleep 1s
echo -n -e "\nПовторный запрос за количеством документов: "
curl -o /dev/null -s -w %{time_total} http://localhost:8080/helpdoc/count


echo -e "\nВнимание! Разница будет заметна только в случае запуска сразу после старта контейнера."