## Запуск

```bash
chmod +x run.sh
./run.sh build_generator && ./run.sh run_generator
./run.sh build_reporter  && ./run.sh run_reporter
```

## Все команды

```
Команда | Описание
`./run.sh build_generator` | Собрать образ генератора
`./run.sh run_generator` | Запустить генератор → `data/data.csv`
`./run.sh create_local_data` | Создать CSV локально в `local_data/`
`./run.sh build_reporter` | Собрать образ аналитика
`./run.sh run_reporter` | Запустить аналитик → `data/report.html`
`./run.sh structure` | Показать структуру файлов
`./run.sh clear_data` | Удалить `.csv` и `.html` из `data/`
`./run.sh inside_generator` | Показать `/data` изнутри контейнера генератора
`./run.sh inside_reporter` | Показать `/data` изнутри контейнера аналитика
`./run.sh report_server` | Запустить веб-сервер с отчётом на порту 8080
```