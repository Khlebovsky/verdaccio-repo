# Оффлайн-репозиторий для зависимостей npm/yarn

### Инструкции по запуску:
1) Запустить контейнер
2) Выполнить запуск сервера verdaccio внутри контейнера
```bash
./node_modules/verdaccio/bin/verdaccio
```
3) Добавить сервер с verdaccio как репозиторий в проект (примеры смотреть ниже)
4) Запустить установку зависимостей, вендоры автоматически попадут в кеш в папку ./storage

### yarn
1) В корне проекта создать файл .yarnrc, поместить в него строчку
```text
registry "http://localhost:4873"
```
2) Выполнить установку зависимостей
```bash
yarn install
```

### npm
Выполнить установку зависимостей
```bash
npm instasll --registry="http://localhost:4873"
```

### Репликация
Для репликации по другим серверам необходимо переносить содержимое папки /var/www/web/verdaccio-repo целиком. Для раздачи кешей с вендорами достаточно запустить сервер командой 2 из инструкции