FROM jboss/keycloak-mongo
MAINTAINER Bixlabs, lclavijo@bixlabs.com

USER root

ADD html/*.ftl /opt/jboss/keycloak/themes/base/login/
ADD css/*.css /opt/jboss/keycloak/themes/keycloak/login/resources/css/
ADD standalone.xml /opt/jboss/keycloak/standalone/configuration/
ADD keycloak-server.json /opt/jboss/keycloak/standalone/configuration/

RUN chown -R root:root /opt/jboss/keycloak
RUN chmod -R 755 /opt/jboss/keycloak

EXPOSE 8080

