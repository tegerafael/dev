# Use uma imagem base que inclua um servidor web, como o Nginx
FROM nginx

# Copie os arquivos do servidor web para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Exponha a porta 80 para que o servidor web possa ser acessado
EXPOSE 80

# Comando para iniciar o servidor web quando o contêiner for executado
CMD ["nginx", "-g", "daemon off;"]