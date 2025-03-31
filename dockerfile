# 使用 OpenJDK 8 作为基础镜像
FROM openjdk:8-jre-alpine

# 设置工作目录
WORKDIR /app

# 将本地的 JAR 包复制到容器的工作目录中
COPY your-app.jar app.jar

# 声明容器运行时监听的端口，这里假设你的 Spring Boot 应用监听 8080 端口，需根据实际情况修改
EXPOSE 8080

# 定义容器启动时执行的命令
CMD ["java", "-jar", "app.jar"]
