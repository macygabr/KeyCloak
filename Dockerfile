FROM quay.io/keycloak/keycloak:24.0.2

WORKDIR /opt/keycloak

ENV KEYCLOAK_HOME=/opt/keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_FEATURES=token-exchange

# Настройки подключения к БД
ENV KC_DB=postgres
ENV KC_DB_URL_HOST=dpg-cuupq69opnds73eiinn0-a.oregon-postgres.render.com
ENV KC_DB_URL_PORT=5432
ENV KC_DB_URL="jdbc:postgresql://${KC_DB_URL_HOST}:${KC_DB_URL_PORT}/keycloak_cnxl"
ENV KC_DB_USERNAME=keycloak
ENV KC_DB_PASSWORD=${KC_DB_PASSWORD}
ENV KC_CACHE=local

# Настройки администратора
ENV KEYCLOAK_ADMIN=${LOGIN}
ENV KEYCLOAK_ADMIN_PASSWORD=${PASSWORD}

ENV KC_HOSTNAME=keycloak-1u0t.onrender.com
ENV KC_HTTP_ENABLED=true
ENV KC_HTTP_PORT=8080

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]

