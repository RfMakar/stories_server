# Stories Server

Stories Server — backend-приложение на Dart Frog, разработанное для экосистемы “Сказки для детей”.
Сервер обрабатывает запросы от мобильного приложения и админ-панели, обеспечивает хранение данных, категорий, историй и их связей.

## Описание

Проект реализует REST API для работы со сказками, категориями и типами категорий.
Все данные хранятся в SQLite через пакет sqflite_common_ffi.
Сервер поддерживает чтение и запись данных, обработку ошибок, а также поиск и фильтрацию контента.

## Основные возможности

- REST API для работы со сказками и категориями
- Поддержка CRUD-операций
- Работа с SQLite через FFI
- Обработка и логирование ошибок
- Валидация входящих данных
- Удобная интеграция с Flutter-приложениями (через общий data package)

## Архитектура и структура проекта

```
📦lib
 ┣ 📂core
 ┃ ┣ 📂exceptions
 ┃ ┃ ┗ 📜app_exceptions.dart
 ┃ ┗ 📂utils
 ┃ ┃ ┗ 📜file_service.dart
 ┣ 📂data
 ┃ ┗ 📜database_sevice.dart
 ┣ 📂models
 ┃ ┣ 📜category_model.dart
 ┃ ┣ 📜category_model.g.dart
 ┃ ┣ 📜category_type_model.dart
 ┃ ┣ 📜category_type_model.g.dart
 ┃ ┣ 📜story_model.dart
 ┃ ┗ 📜story_model.g.dart
 ┣ 📂repositories
 ┃ ┣ 📜category_repository.dart
 ┃ ┣ 📜category_type_repository.dart
 ┃ ┣ 📜search_repository.dart
 ┃ ┣ 📜story_categories_repository.dart
 ┃ ┣ 📜story_popular_repository.dart
 ┃ ┗ 📜story_repository.dart
 ┗ 📂services
 ┃ ┣ 📜category_service.dart
 ┃ ┣ 📜category_type_service.dart
 ┃ ┣ 📜search_service.dart
 ┃ ┣ 📜story_category_service.dart
 ┃ ┣ 📜story_popular_service.dart
 ┃ ┗ 📜story_service.dart
```

## Технологии:

- Язык: Dart 3.x
- Фреймворк: Dart Frog
- База данных: SQLite (через sqflite_common_ffi)
- Сериализация: json_serializable / json_annotation
- Управление переменными окружения: dotenv
- Идентификаторы: uuid
- Сборка кода: build_runner

## Связанные репозитории:

[Серверное приложение](https://github.com/RfMakar/stories_server)  

[Клиентское приложение](https://github.com/RfMakar/stories_client)  

[Админ приложение](https://github.com/RfMakar/stories_admin)  

[Пакет данных](https://github.com/RfMakar/stories_data) 

## Автор
**Максим Макарчук**


