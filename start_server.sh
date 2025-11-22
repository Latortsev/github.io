#!/bin/bash
# Скрипт для запуска локального сервера для проекта "10 Красивых Кнопок"

echo "Запуск локального сервера для проекта '10 Красивых Кнопок'"
echo "=========================================================="

# Проверяем наличие Python
if command -v python3 &> /dev/null; then
    echo "Найден Python3, запускаем сервер..."
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "Найден Python, запускаем сервер..."
    python -m http.server 8000
else
    echo "Ошибка: Ни Python3, ни Python не найдены в системе."
    echo "Пожалуйста, установите Python для запуска локального сервера."
    exit 1
fi