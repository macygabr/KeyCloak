FROM quay.io/keycloak/keycloak:24.0.2

WORKDIR /opt/keycloak

ENV KEYCLOAK_HOME=/opt/keycloak
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV KC_FEATURES=token-exchange

ENV KC_HOSTNAME=localhost
ENV KC_HTTP_PORT=8080
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://db:5432/keycloak
ENV KC_DB_USERNAME=keycloak
ENV KC_DB_PASSWORD=keycloak
ENV KC_CACHE=local

ENV KEYCLOAK_ADMIN=${LOGIN}
ENV KEYCLOAK_ADMIN_PASSWORD=${PASSWORD}

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
