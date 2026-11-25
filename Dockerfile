
FROM nginx:alpine

ARG INSTANCE_LABEL=dermapura-web-01
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/const INSTANCE_LABEL = \".*\";/const INSTANCE_LABEL = \"${INSTANCE_LABEL}\";/" /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
