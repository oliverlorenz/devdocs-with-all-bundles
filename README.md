## Thanks to

* https://devdocs.io and https://github.com/Thibaut/devdocs because of there amazing project to provide documentations offline
* https://hub.docker.com/r/lejenome/devdocs/ for the wonderful base he provided. Sadly its outdatet so I started this project

## Reason for this image

If you only need offline documentation you will be happy with https://devdocs.io which store the documentation in your offline cache in your browser. In my case I delete my browser data every day so the amazing devdocs.io does not work for me. If you have similar problems this image will help you because all documentations are available without the browser cache.

## Usage

To get the latest version of the bundled documentations:

```
docker pull oliverlorenz/devdocs-with-all-bundles
docker run -p 127.0.0.1:9292:9292 --name devdocs oliverlorenz/devdocs-with-all-bundles:latest
```
