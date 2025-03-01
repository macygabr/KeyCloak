FROM quay.io/keycloak/keycloak:23.0.1

# Устанавливаем переменные окружения
ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_DB=postgres \
    KC_DB_URL=jdbc:postgresql://dpg-cuupq69opnds73eiinn0-a.oregon-postgres.render.com:5432/keycloak_cnxl \
    KC_DB_USERNAME=keycloak \
    KC_DB_PASSWORD=VtcDG6j2iFrjIhrM1ZVgiy9c6uF7QPZz \
    KC_HTTP_ENABLED=true \
    KC_HTTPS_ENABLED=false \
    KC_PROXY=edge \
    KC_HOSTNAME_STRICT=false \
    KC_HOSTNAME_STRICT_HTTPS=false \
    KC_LOG_LEVEL=DEBUG \
    KC_SPI_THEME_STATIC_MAX_AGE=-1

# Открываем порты
EXPOSE 8080

CMD ["start"]
