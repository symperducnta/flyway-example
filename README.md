# flyway-example

A simple example for version migrations with flyway

## How to run this project

1. Tạo file `.env` và copy nội dung từ file `.env.example` và điền giá trị tương ứng

```bash
cp .env.example .env
```

Ví dụ cấu hình file `.env`

```bash
PG_HOST=localhost
PG_PORT=10015
PG_USERNAME=test
PG_PASSWORD=test
PG_DB_NAME=accounts
```

2. Trong foulder db copy file `example.flyway.conf` vào `flyway.conf` và điền cấu hình.

```bash
cp db/flyway_conf/example.flyway.conf db/flyway_conf/flyway.conf
```

Ví dụ cấu hình file `.flyway.conf`

```bash
# Example migrate postgreSQL db
flyway.url=jdbc:postgresql://localhost:10015/accounts
flyway.user=test
flyway.password=test
flyway.schemas=public
flyway.locations=filesystem:./migration
```

3. Chạy file script `migrate.sh`

```bash
./migrate.sh
```
