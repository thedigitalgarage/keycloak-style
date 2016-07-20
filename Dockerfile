FROM jboss/keycloak-mongo:1.9.8.Final
MAINTAINER Bixlabs, eddsuarez@bixlabs.com

ADD html/*.ftl /opt/jboss/keycloak/themes/base/login/
ADD css/*.css /opt/jboss/keycloak/themes/keycloak/login/resources/css/
ADD standalone.xml /opt/jboss/keycloak/standalone/configuration/
ADD keycloak-server.json /opt/jboss/keycloak/standalone/configuration/
ADD keycloak.jks /opt/jboss/keycloak/standalone/configuration/

EXPOSE 8080

