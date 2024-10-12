# Docker Dars 01

Ushbu darsda konteynerlar yaratish asoslarini ko'rib chiqamiz.

### Docker o'rnatilganligini tekshirish

`docker run hello-world`

### Ubuntu konteynerini oldinda ishga tushirish

`docker run -it ubuntu bash`


### Nginx konteynerini fon rejimida ishga tushirish va portni maplash

`docker run -d -p 8080:80 nginx`

           Agar faqat hostPort uchun diapazon belgilansa, 
           konteynerPort diapazoni bo'lmasligi kerak. Bu holatda konteyner porti 
           belgilangan hostPort diapazoni ichida joylashtiriladi (masalan, `-p 1234-1236:1234/tcp`).

           (haqiqiy maplashni ko'rish uchun 'docker port' dan foydalaning)

### Ishlayotgan konteynerlarni ko'rsatish

`docker ps`

### Ishlayotgan konteynerni to'xtatish

`docker stop CONTAINER_ID`

### Manbalar

* [Docker Reference - run](https://docs.docker.com/engine/reference/run/)
* [Docker Reference - ps](https://docs.docker.com/engine/reference/commandline/ps/)
* [Docker Reference - stop](https://docs.docker.com/engine/reference/commandline/stop/)
