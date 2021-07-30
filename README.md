# Beer Advisor Example Servlet


## Compile Classes

```
mkdir classes
javac -d classes src/com/example/model/BeerExpert.java
javac -classpath ~/apache-tomcat-9.0.39/lib/servlet-api.jar:classes:. -d classes src/com/example/web/BeerSelect.java 
```
## Deploy to apache tomcat

Replace DEPLOY_SERVER_PATH with the path of apache-tomcat

```
sh deploy.sh
```
