Docker — это платформа для автоматизации развертывания, масштабирования и управления приложениями в контейнерах. Контейнеры позволяют упаковать приложение и все его зависимости в единый образ, который можно запускать на любой системе, поддерживающей Docker, независимо от операционной системы и настроек окружения.

### Для чего нужен Docker?

1. **Изоляция окружения**: Контейнеры изолируют приложения и их зависимости от хост-системы и друг от друга, что снижает вероятность конфликтов между различными версиями библиотек и программ.

2. **Упрощение развертывания**: Docker позволяет быстро и легко развертывать приложения, так как все необходимые зависимости и конфигурации уже включены в контейнер.

3. **Портируемость**: Образы Docker могут работать на любой машине, где установлен Docker, что облегчает перенос приложений между различными средами (разработка, тестирование, продакшн).

4. **Масштабируемость**: Docker облегчает масштабирование приложений, так как можно быстро запускать и останавливать контейнеры по мере необходимости.

5. **Управление ресурсами**: Контейнеры позволяют эффективно использовать ресурсы системы, так как они легковеснее виртуальных машин.

### Как развернуть своё приложение через Docker

1. **Создание Dockerfile**: Это текстовый файл, который содержит инструкции для создания образа.
Пример простого Dockerfile для приложения на Node.js есть в корне данного репозитория:

2. **Построение образа**: Командой `docker build`, чтобы создать образ из Dockerfile.

    ```bash
    docker build -t my-app .
    ```

    Создание образа с определенными переменными, которые задаются через --build-arg
    ```bash
    docker build --build-arg NODE_ENV=production --build-arg PORT=3000 -t myapp:production .
    ```

3. **Запуск контейнера**: Командой `docker run`, чтобы запустить приложение.

    ```bash
    docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
    ```

    Для перенаправления порта 3000 хоста на порт 3000 в контейнере.
    ```bash
    docker run -p 3000:3000 myapp:production
    ``` 
    Запуск с конфигурацией памяти и ядер
    ```bash
    docker run --memory=512m --cpus=1 my-image
    ``` 

4. **Проверка работы приложения**: Открыть браузер и перейти по адресу `http://localhost:3000`, чтобы увидеть ваше приложение в действии.

### Основные команды Docker, кроме вышеуказанных

1. **docker ps** — отображение запущенных контейнеров.

    ```bash
    docker ps
    ```

2. **docker images** — отображение списка загруженных образов.

    ```bash
    docker images
    ```

3. **docker pull** — загрузка образа из Docker Hub.

    ```bash
    docker pull IMAGE_NAME
    ```

4. **docker stop** — остановка работающего контейнера.

    ```bash
    docker stop CONTAINER_ID
    ```

5. **docker rm** — удаление остановленного контейнера.

    ```bash
    docker rm CONTAINER_ID
    ```

6. **docker rmi** — удаление образа.
    ```bash
    docker rmi IMAGE_ID
    ```
