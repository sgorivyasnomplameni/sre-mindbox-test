# dockerfile для тестового образа веб-приложения
# используем легкий образ nginx, чтобы минимизировать размер и ресурсы
FROM nginx:alpine

# утилиты для теста нагрузки
RUN apk add --no-cache curl stress-ng

# открываем порт для приложения
EXPOSE 80

# запускаем nginx
CMD ["nginx", "-g", "daemon off;"]