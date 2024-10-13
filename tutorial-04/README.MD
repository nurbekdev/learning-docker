
# Docker Tutorial 04 - Docker Compose konfiguratsiyalarini yaratish

Ushbu qo'llanmada biz docker compose konfiguratsiyalarini qanday yaratishni o'rganamiz.

## 1. Dockerfile yaratish

Avvalo `Dockerfile` ni quyidagicha yarating:

```Dockerfile
FROM python:3.8-slim
```

Bu faylda Python 3.8 ning eng yengil versiyasidan foydalanamiz.

## 2. Docker Compose faylini yaratish

Quyidagi `docker-compose.yml` faylini yarating:

```yaml
version: "3"
services:
    www:
        build: .
        ports:
            - "8080:80"
        volumes:
            - ./src:/usr/src/app
        networks:
            - default
```

Bu yerda biz:
- `build: .` - Dockerfile ni joriy katalogdan foydalanib imidj yaratamiz.
- `ports` - konteynerning 80-portini hostning 8080-portiga ulaymiz.
- `volumes` - mahalliy katalogni konteynerdagi katalogga ulaymiz.
- `networks` - tarmoqni biriktiramiz.

## 3. Docker konteynerini ishga tushirish

Docker compose konfiguratsiyasi asosida konteynerni ishga tushirish uchun quyidagi buyruqdan foydalaning:

```bash
docker compose up
```

## 4. Docker konteynerini to'xtatish va olib tashlash

Konteynerni to'xtatish va tozalash uchun:

```bash
docker compose down
```

## 5. Manbalar

- [Docker Compose](https://docs.docker.com/compose/)
- [Docker Compose Reference - up](https://docs.docker.com/compose/reference/up/)
- [Docker Compose Reference - down](https://docs.docker.com/compose/reference/down/)
