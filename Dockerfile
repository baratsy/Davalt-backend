# Utilise Java 17
FROM eclipse-temurin:17-jdk-alpine

# Dossier de travail
WORKDIR /app

# Copier les fichiers
COPY . .

# Donner les droits au mvnw
RUN chmod +x mvnw

# Build du projet
RUN ./mvnw clean package -DskipTests

# Exposer le port
EXPOSE 8080

# Lancer l'application
CMD ["java", "-jar", "target/davalt-backend-0.0.1-SNAPSHOT.jar"]