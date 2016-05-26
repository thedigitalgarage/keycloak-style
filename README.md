# Keycloak Digital Garage theme
Keycloak custom theme for integrate Cochera with SSO.

# Docker
Docker image with resources, using jboss/keycloak-mongo.
SSL configuration can be added to the Dockerfile in order to automate the Keycloak deployment. Adding standalone.xml to enable SSL on Wildfly application server and certificates.

# Dockerfile mapping
template.ftl --> themes/base/login/template.ftl
login.ftl --> themes/base/login/login.ftl
register.ftl --> themes/base/login/register.ftl
login.css --> themes/keycloak/login/resources/css/login.css

# Openshift
    oc new-app -e KEYCLOAK_USER=<USERNAME> -e KEYCLOAK_PASSWORD=<PASSWORD> thedigitalgarage/keycloak-style

## SSL
Create self-signed certificate
    sudo openssl genrsa -out example-test.key 2048
    sudo openssl req -new -key example-test.key -out example-test.csr
    sudo openssl x509 -req -days 366 -in example-test.csr        -signkey example-test.key -out example-test.crt

Then create a secure route for keycloak service with TCP:8080 port.
Use EDGE TLS termination and fill certifate and private key previously generated.

## Previous
Create mongodb database or use openshift-keycloak.yaml template instead.
    oc create -f <filename> -n <project>




