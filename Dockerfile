# Utiliza o Nginx como servidor web
FROM nginx:alpine

# Rótulo da instância exibido no rodapé da página
ARG INSTANCE_LABEL=dermapura-web-01

# Copia a página da DermaPura para o servidor
COPY index.html /usr/share/nginx/html/index.html

# Ajusta o rótulo da instância no rodapé
RUN sed -i "s/const INSTANCE_LABEL = \".*\";/const INSTANCE_LABEL = \"${INSTANCE_LABEL}\";/" /usr/share/nginx/html/index.html

# Expõe a porta HTTP
EXPOSE 80

# Inicia o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
