
# Docker Tutorial 03 - Volume qo'shish

Ushbu qo'llanmada biz qanday qilib konteynerimizga hajm (volume) biriktirishni o'rganamiz.

## 1. Dockerfile yaratish

Avvalo `Dockerfile` ni quyidagicha yarating:

```Dockerfile
FROM python:3.8-slim
COPY ./src /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "python", "./run.py" ]
```

Bu faylda biz Pythonning 3.8 versiyasidan foydalanyapmiz va mahalliy fayllarni konteyner ichiga nusxalaymiz.

## 2. Docker imidjini yaratish

Quyidagi buyruq orqali Docker imidjini yaratamiz:

```bash
docker build -t run-python .
```

Bu yerda `run-python` deb nomlangan yangi Docker imidji yaratiladi.

## 3. Yaratilgan imidjni tekshirish

Yaratilgan Docker imidjini quyidagi buyruq orqali ko'rishingiz mumkin:

```bash
docker images
```

## 4. Docker imidjni ishga tushirish

Mahalliy fayllarni konteyner ichiga nusxalagan Docker imidjni ishga tushirish uchun quyidagi buyruqdan foydalanamiz:

```bash
docker run -it --rm --name run-app run-python
```

Bu yerda:
- `-t` - Pseudo-tty (terminal) ni ajratadi.
- `-i` - STDIN ochiq bo'lib qoladi (hatto ulanish bo'lmasa ham).

## 5. Imidjni o'chirish

Docker imidjini o'chirish uchun quyidagi buyruqdan foydalaning:

```bash
docker rmi run-python
```

## 6. Imidj yaratmasdan ishga tushirish

Docker imidj yaratmasdan, mavjud Python imidji orqali mahalliy katalogni konteynerga ulash va ishga tushirish:

```bash
docker run -it --rm --name python-runner -v C:\Users\miner10\Documents\GitHub\learning-docker\tutorial-03\src:/usr/src/myapp -w /usr/src/myapp python:3.8-slim python run.py
```

Bu yerda:
- `--rm` - konteyner ishini tugatgandan so'ng avtomatik o'chiriladi.
- `-v` - hajm biriktirish uchun ishlatiladi, bu erda host kompyuterdagi katalogni konteyner ichidagi katalogga ulaymiz.
- `-w` - konteyner ichidagi ishchi katalogini belgilaydi.

## 7. Manbalar

- [Docker Reference - run](https://docs.docker.com/engine/reference/run/#additional-groups)
- [Docker Reference - build](https://docs.docker.com/engine/reference/commandline/build/)
- [Docker Reference - volumes](https://docs.docker.com/storage/volumes/)
