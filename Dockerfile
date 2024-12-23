# Используем образ Node.js версии 14 в качестве базового для нашего контейнера
FROM node:14

# Определяем аргументы, которые можно передать в момент сборки образа
ARG NODE_ENV=production  # Устанавливаем переменную окружения NODE_ENV с значением по умолчанию 'production'
ARG PORT=3000            # Устанавливаем переменную окружения PORT с значением по умолчанию 3000

# Устанавливаем переменные окружения внутри контейнера
ENV NODE_ENV=${NODE_ENV}
ENV PORT=${PORT}

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /
# Копируем файл package.json в рабочую директорию контейнера
COPY package.json ./

# Устанавливаем зависимости из package.json
RUN npm i

# Копируем все остальные файлы и директории в контейнер
COPY . .

# Определяем команду, которая будет выполнена при запуске контейнера
CMD [ "node", "index.js" ]
