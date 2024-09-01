#!/bin/bash

# Перейти в директорию, содержащую файлы
cd /mnt/s/projects/awesome/awesome-project

# Найти все .md файлы, кроме README.md
find . -type f -name "*.md" ! -name "README.md" | while read -r file; do
  # Получить имя файла без расширения и путь к файлу
  dir_name=$(basename "$file" .md)
  dir_path=$(dirname "$file")

  # Создать папку с именем файла
  mkdir -p "$dir_path/$dir_name"
  
  # Переместить файл в новую папку и переименовать его в README.md
  mv "$file" "$dir_path/$dir_name/README.md"
done