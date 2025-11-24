FROM nginx:stable

WORKDIR /tmp

COPY . /tmp/

RUN apt-get update \
    && apt-get -y upgrade

# install node
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs


# install angular cli and build the project
RUN npm install -g @angular/cli@20.3 \
    && npm install \
    && ng build

# move built files to appropriate folder
RUN mkdir ../srv/www \
    && mv dist/angular-app ../srv/www

# move server conf to nginx folder
RUN mv prod_server.conf ../etc/nginx/conf.d
