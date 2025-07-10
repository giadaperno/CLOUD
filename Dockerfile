# Usa un'immagine base di Java
FROM openjdk:17-jdk-slim

# Imposta la variabile d'ambiente per il nome del file JAR
ARG JAR_FILE=meteo2/target/open-meteo-0.0.1-SNAPSHOT.jar

# Copia il file JAR nell'immagine
COPY ${JAR_FILE} app.jar

# Espone la porta 8080
EXPOSE 8080

# Comando per eseguire il JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]