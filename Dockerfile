# Використовуємо офіційний образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо файли з локальної машини в контейнер
COPY . /app

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Вказуємо порт, на якому буде працювати Flask
EXPOSE 5000

# Команда для запуску додатку
CMD ["python", "app.py"]
