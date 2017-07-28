#!/bin/sh

COMPILE_SHELL_ROOT_PATH=$(pwd)
NGINX_PROJ_ROOT_PATH=${COMPILE_SHELL_ROOT_PATH}/../../../nginx-1.12.1
NGINX_OUTPUT_ROOT_PATH=${COMPILE_SHELL_ROOT_PATH}/../../../lib/nginx


cd ${NGINX_PROJ_ROOT_PATH}
./configure  --prefix=${NGINX_OUTPUT_ROOT_PATH} \
	--sbin-path=${NGINX_OUTPUT_ROOT_PATH}/sbin/nginx \
	--conf-path=${NGINX_OUTPUT_ROOT_PATH}/conf/nginx.conf \
	--error-log-path=${NGINX_OUTPUT_ROOT_PATH}/error.log \
	--http-log-path=${NGINX_OUTPUT_ROOT_PATH}/access.log \
	--pid-path=${NGINX_OUTPUT_ROOT_PATH}/nginx.pid \
	--lock-path=${NGINX_OUTPUT_ROOT_PATH}/nginx.lock  \
	--user=nginx --group=nginx \
	--with-http_ssl_module --with-http_stub_status_module --with-http_gzip_static_module \
	--http-client-body-temp-path=${NGINX_OUTPUT_ROOT_PATH}/client/ \
	--http-proxy-temp-path=${NGINX_OUTPUT_ROOT_PATH}/proxy/ \
	--http-fastcgi-temp-path=${NGINX_OUTPUT_ROOT_PATH}/fcgi/ \
	--http-uwsgi-temp-path=${NGINX_OUTPUT_ROOT_PATH}/uwsgi \
	--http-scgi-temp-path=${NGINX_OUTPUT_ROOT_PATH}/scgi \
	--with-openssl=/usr/local/Cellar/openssl/1.0.2g \
	--with-pcre 
	