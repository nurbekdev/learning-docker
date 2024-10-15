FROM python:3.8-slim

# Flaskni o'rnatish uchun zarur bo'lgan kutubxonalarni o'rnatamiz
RUN pip install flask

# Ilovani ko'chiramiz
COPY tutorial-04/src /usr/src/app

# Ishchi katalogni belgilaymiz
WORKDIR /usr/src/app

# Flask ilovasini ishga tushirish
CMD [ "python", "index.py" ]
