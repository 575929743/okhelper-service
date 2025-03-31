FROM centos:7
ENV JAVA_HOME /usr/lib/jvm/jre-11-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

RUN groupadd -r spring && useradd -r -g spring spring
USER spring

WORKDIR /app

COPY your-application.jar app.jar  # 替换your-application.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]