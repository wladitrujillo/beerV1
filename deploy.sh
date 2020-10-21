#!/bin/sh

DEPLOY_SERVER_PATH=~/apache-tomcat-9.0.39
APP_NAME=Beer-v1

echo "DEPLOY_SERVER_PATH ${DEPLOY_SERVER_PATH}"
echo "APP NAME: ${APP_NAME}"

if [ -d ${DEPLOY_SERVER_PATH}/webapps/${APP_NAME} ] 
then
    echo "Directory ${APP_NAME} exists."    
    rm -rf ${DEPLOY_SERVER_PATH}/webapps/${APP_NAME}
fi

mkdir ${DEPLOY_SERVER_PATH}/webapps/${APP_NAME}
mkdir ${DEPLOY_SERVER_PATH}/webapps/${APP_NAME}/WEB-INF

echo "Copy classes"
cp -avr classes/ ${DEPLOY_SERVER_PATH}/webapps/Beer-v1/WEB-INF
echo "Copy Files"
cp etc/web.xml ${DEPLOY_SERVER_PATH}/webapps/Beer-v1/WEB-INF/
cp web/*.* ${DEPLOY_SERVER_PATH}/webapps/Beer-v1/
echo "Deploy Success..."