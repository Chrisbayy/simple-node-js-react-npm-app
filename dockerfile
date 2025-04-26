# Usa una imagen oficial de Node
FROM node:18

# Crea un directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto que usa la app
EXPOSE 3000

# Comando para lanzar la app
CMD ["npm", "start"]
