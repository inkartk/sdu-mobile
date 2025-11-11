# News Feature

Модуль для работы с новостями через News API.

## Структура

```
news/
├── data/
│   ├── datasource/
│   │   └── news_remote_datasourse.dart    # Retrofit API клиент
│   ├── dto/
│   │   └── news_dto.dart                   # Data Transfer Objects
│   └── repository/
│       └── news_repository.dart            # Реализация репозитория
├── domain/
│   ├── models/
│   │   └── news_model.dart                 # Модели предметной области
│   └── repository/
│       └── news_repository.dart            # Интерфейс репозитория
└── presentation/
    ├── bloc/
    │   ├── news_bloc.dart                  # BLoC логика
    │   ├── news_event.dart                 # События
    │   └── news_state.dart                 # Состояния
    └── pages/
        └── news_page.dart                  # UI страница
```

## API эндпоинты

### 1. Top Headlines (`/v2/top-headlines`)
Получение главных новостей по стране/категории.

**Параметры:**
- `country` - код страны (us, ru, gb и т.д.)
- `category` - business, entertainment, general, health, science, sports, technology
- `pageSize` - количество результатов (макс. 100)
- `page` - номер страницы

**Пример использования в BLoC:**
```dart
bloc.add(NewsEvent.loadTopHeadlines(
  country: 'us',
  category: 'technology',
  pageSize: 20,
));
```

### 2. Everything (`/v2/everything`)
Поиск по всем статьям.

**Параметры:**
- `query` - поисковый запрос (обязательный)
- `language` - язык (en, ru и т.д.)
- `sortBy` - relevancy, popularity, publishedAt
- `pageSize` - количество результатов
- `page` - номер страницы

**Пример использования:**
```dart
bloc.add(NewsEvent.loadEverything(
  query: 'bitcoin',
  language: 'en',
  sortBy: 'popularity',
));
```

## Навигация

Для перехода на страницу новостей:

```dart
context.router.push(const NewsRoute());
```

## Features

- ✅ Загрузка главных новостей по стране/категории
- ✅ Поиск новостей по ключевым словам
- ✅ Pagination (load more)
- ✅ Pull-to-refresh
- ✅ Обработка ошибок
- ✅ Loading states
- ✅ Empty state

## Конфигурация

API ключ настраивается в `.env` файле:
```
NEWS_API_KEY=your_api_key_here
NEWS_API_BASE_URL=https://newsapi.org/v2
```

Получить API ключ можно здесь: https://newsapi.org/register
