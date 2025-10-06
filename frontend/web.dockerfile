FROM node:latest AS build

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx:alpine

# Copier le frontend compilé
COPY --from=build /app/dist /usr/share/nginx/html

# Copier le template et le script
# COPY src/config.template.json /app/src/config.template.json

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
# CMD ["nginx", "-g", "daemon off;"]



#
#   ANCIEN DOCKERFILE STATIC (marche pa tro, ya pas sh)
#


# # Étape 1 : build frontend
# FROM node:latest AS build

# WORKDIR /app

# # Copier les fichiers de dépendances
# COPY package*.json ./

# # Installer les dépendances
# RUN npm install

# # Copier le reste du code
# COPY . .


# # Construire l'application
# RUN npm run build

# # Étape 2 : serveur statique
# FROM ghcr.io/static-web-server/static-web-server:2 AS runtime


# # Copier les fichiers compilés
# COPY --from=build /app/dist /public

# # EXPOSE 80

# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]