
# Utiliza o Nginx como servidor web
FROM nginx:alpine

# Copia a página da DermaPura para o servidor
COPY index.html /usr/share/nginx/html/index.html

# Expõe a porta HTTP
EXPOSE 80

# Inicia o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
