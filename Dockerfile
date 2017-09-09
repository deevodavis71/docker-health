FROM sjd300671/minimal-java
EXPOSE 8080
ADD target/docker-health-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS="1"
ENV SPRING_OPTS=""
ENTRYPOINT [ "sh", "-c", "exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $SPRING_OPTS" ]
HEALTHCHECK --start-period=60s --interval=10s CMD curl --fail http://localhost:8080/health || exit 1
