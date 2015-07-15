# Dockerfile for Swagger Editor

FROM sebp/nodejs
MAINTAINER Sebastien Pujadas http://pujadas.net
ENV REFRESHED_AT 2015-07-15

ENV SWAGGER_EDITOR_HOME /opt/swagger-editor

RUN mkdir -p ${SWAGGER_EDITOR_HOME}

WORKDIR ${SWAGGER_EDITOR_HOME}

RUN groupadd -r swagger \
 && useradd -r -s /usr/sbin/nologin -d ${SWAGGER_EDITOR_HOME} -c "Swagger service user" -g swagger swagger \
 && chown -R swagger:swagger ${SWAGGER_EDITOR_HOME}

USER swagger
ENV HOME ${SWAGGER_EDITOR_HOME}

RUN git clone https://github.com/swagger-api/swagger-editor.git .

RUN npm run build

EXPOSE 8080

CMD node -e "require('grunt').tasks(['connect:dist:keepalive']);"
