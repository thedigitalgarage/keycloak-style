FROM jboss/keycloak-postgres
MAINTAINER Bixlabs, lclavijo@bixlabs.com

ADD html/*.ftl /opt/jboss/keycloak/themes/base/login/
ADD css/*.css /opt/jboss/keycloak/themes/keycloak/login/resources/css/

EXPOSE 8080

