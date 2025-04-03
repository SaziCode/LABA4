# Використовуємо офіційний образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо лише необхідні файли (наприклад, app.py і requirements.txt)

COPY requirements.txt /app/

# Встановлюємо залежності
RUN pip install -r requirements.txt

# Вказуємо порт, на якому буде працювати Flask
EXPOSE 5000

# Команда для запуску додатку
CMD ["python", "app.py"]
