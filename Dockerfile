# Ein Node.js v.22 Image als Basis verwendet
FROM node:22

# Arbeitsverzeichnis definiert
WORKDIR /hello-docker-app

# Kopiere package.son in das Arbeitsverzeichnis
COPY package.json .

# Installiere Abhaengigkeiten
RUN npm install

# Kopiere den Rest der Anwendung in das Arbeitsverzeichnis
COPY . .

# Oeffne den Port 3000
EXPOSE 3000

# Definiere den Befehl, welcher die Anwendung startet
CMD [ "node", "app.js" ]
