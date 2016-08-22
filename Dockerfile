FROM jboss/keycloak-mongo:1.9.7.Final
MAINTAINER Bixlabs, eddsuarez@bixlabs.com

ADD theme/base/login/html/*.ftl /opt/jboss/keycloak/themes/base/login/
ADD theme/base/email/messages/*.properties /opt/jboss/keycloak/themes/base/email/messages/
#ADD theme/keycloak/email/resources/img/*.png /opt/jboss/keycloak/themes/keycloak/email/resources/img/
ADD theme/keycloak/login/resources/css/*.css /opt/jboss/keycloak/themes/keycloak/login/resources/css/

ADD standalone.xml /opt/jboss/keycloak/standalone/configuration/
ADD keycloak-server.json /opt/jboss/keycloak/standalone/configuration/
ADD godaddy.keycloak.jks /opt/jboss/keycloak/standalone/configuration/

EXPOSE 8080 8180

