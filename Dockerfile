FROM node:14.16.0-alpine3.13

# Create user, app, app group and app dir
RUN addgroup app && adduser -S -G app app
RUN mkdir -p /app && chown app:app /app

# Set to app user and create app directory
USER app
WORKDIR /app

# Create app directory
RUN mkdir data

# Copy app files and install node modules
COPY --chown=app:app package*.json ./
RUN npm install
COPY . .
ENV API_URL=http://api.myapp.com
EXPOSE 3000

# Execute npm start
# Bracket format allows direct execution without sh process
CMD ["npm", "start"]