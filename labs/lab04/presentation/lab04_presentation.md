---
## Author

author:
name: Мохаммед Фуад Мохаммед Хамуд Аль-хадри 
degrees: BSc
orcid: N/A
email: [1132255653@rudn.ru](mailto:1132255653@rudn.ru)
affiliation:
- name: Российский университет дружбы народов
country: Российская Федерация
postal-code: N/A
city: Москва
address: ул. Миклухо-Маклая, д.21 k1

## Title

title: Продвинутое использование Git
subtitle: Лабораторная работа №4
author: Студент курса «Операционные системы»
date: today
-----------

# Введение

## Актуальность

* Gitflow упрощает управление версиями проекта
* Семантические коммиты и SemVer делают историю понятной
* Conventional Commits помогают автоматизировать CHANGELOG

---

# Цель работы

Освоение продвинутого рабочего процесса Git с Gitflow и семантическими коммитами.

---

# Задачи

* установка Gitflow и Node.js
* настройка семантического версионирования
* использование Conventional Commits
* работа с функциональными, релизными и hotfix ветками
* публикация релизов на GitHub

---

# Gitflow Workflow

Основные ветки:

* master — официальная история релиза
* develop — объединение всех функций

Процесс:

* ветки feature создаются из develop
* ветки release создаются из develop
* ветки hotfix создаются из master



---

# Семантическое версионирование

* Формат MAJOR.MINOR.PATCH
* MAJOR — несовместимые изменения
* MINOR — новые функции
* PATCH — исправления ошибок

---

# Conventional Commits

Структура коммита:

```
<type>(<scope>): <subject>

[optional body]

[optional footer]
```

Типы коммитов:

* feat: новая функция
* fix: исправление ошибки
* chore, docs, style, refactor, perf, test



---

# Практический сценарий

1. Создание репозитория Git
2. Инициализация Gitflow
3. Создание функциональных веток (feature)
4. Создание релизных веток (release)
5. Создание веток исправлений (hotfix)


---

# Создание CHANGELOG

* Используется стандарт `standard-changelog`
* Автоматическое формирование журнала изменений из коммитов

Команды:

```bash
standard-changelog --first-release
git add CHANGELOG.md
git commit -am 'chore(site): add changelog'
```



---

# Публикация релизов

* Push всех веток и тегов: `git push --all && git push --tags`
* Создание релиза на GitHub:

```bash
gh release create v1.0.0 -F CHANGELOG.md
```



---

# Результаты

* Репозиторий настроен на Gitflow
* Семантическое версионирование настроено
* Conventional Commits применены
* Выполнены публикации релизов на GitHub

---

# Вывод

Gitflow и семантические коммиты позволяют структурировать работу над проектами, облегчая совместную разработку, ведение истории и автоматизацию релизов.
