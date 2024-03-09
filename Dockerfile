FROM adoptopenjdk/openjdk11
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY  /home/vsts/work/1/s/target/database_service_project-0.0.1.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
