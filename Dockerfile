# Use a imagem do Node.js com a versão desejada
FROM node:14-alpine

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o conteúdo do seu projeto para o diretório de trabalho
COPY . /app

# Instale as dependências
RUN npm install

# Defina as variáveis de ambiente para as credenciais do npm
ENV NPM_USERNAME=raphaeldcout
ENV NPM_PASSWORD=Raphael299#
ENV NPM_EMAIL=draphael48@gmail.com

# Execute o comando de login no registro do npm usando as variáveis de ambiente
RUN echo "//registry.npmjs.org/:_authToken=\${NPM_USERNAME}:\${NPM_PASSWORD}" > ~/.npmrc && \
  npm config set email "\${NPM_EMAIL}"

# Execute o comando de login no registro do npm
#RUN npm login

# Execute o comando de publicação da biblioteca
#RUN npm publish --access public
