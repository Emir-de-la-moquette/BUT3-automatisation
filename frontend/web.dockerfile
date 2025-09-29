# Étape 1 : build frontend
FROM node:latest AS build

WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code
COPY . .

# Construire l'application
RUN npm run build

# Étape 2 : serveur statique
FROM ghcr.io/static-web-server/static-web-server:2 AS runtime

# Copier les fichiers compilés
COPY --from=build /app/dist /app

EXPOSE 80

# Lancer le serveur statique sur /app
CMD ["static-web-server", "--port", "80", "--root", "/app"]
