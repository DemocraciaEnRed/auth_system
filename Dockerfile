FROM jboss/keycloak:4.4.0.Final

MAINTAINER "panovaldez@democracyos.io"
LABEL created $BUILD_DATE
LABEL url "https://democraciaenred.org"
LABEL title "Authentication DeR"
LABEL vendor "Democracia en Red"
LABEL description "Authentication system DeR"
LABEL documentation "https://github.com/DemocraciaEnRed/dialogo-legislativo/blob/main/auth"

COPY themes/leyes_abiertas /opt/jboss/keycloak/themes/leyes_abiertas
COPY themes/dialogo_legislativo /opt/jboss/keycloak/themes/dialogo_legislativo
COPY customization/standalone.xml /opt/jboss/keycloak/standalone/configuration/
COPY customization/standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/
