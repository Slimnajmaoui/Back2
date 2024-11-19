# Utiliser une image de base Java
FROM openjdk:17

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le jar généré dans le répertoire de travail
COPY target/Back_PFE-1.0.0.jar   /app/Back_PFE-1.0.0.jar

EXPOSE 8090

CMD ["java", "-jar", "Back_PFE-1.0.0.jar"]

