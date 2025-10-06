#!/bin/sh

sed -i "s/__ENV__/${ENV}/g" /usr/share/nginx/html/assets/index-*.js

nginx -g "daemon off;"