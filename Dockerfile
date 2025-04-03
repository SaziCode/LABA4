# Вибір базового образу
FROM python:3.9-slim

# Встановлення робочої директорії в контейнері
WORKDIR /app

# Копіювання файлу requirements.txt в контейнер
COPY requirements.txt /app/

# Встановлення залежностей
RUN pip install -r requirements.txt

# Копіювання всіх файлів з поточної директорії в контейнер
COPY . /app/

# Запуск вашого додатку
CMD ["python", "app.py"]
