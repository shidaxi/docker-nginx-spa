# docker base image for single page application (SPA)

Example Dockerfile:

```Dockerfile

FROM shidaxi/nginx-spa:latest

ADD dist/* .

```