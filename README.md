### Запуск контейнера с СУБД postgres
> docker-compose up --build

### Инициализация БД
> docker exec -it postgres psql -U admin -d postgres -f /migrations/init_db.sql