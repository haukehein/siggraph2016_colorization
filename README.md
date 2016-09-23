#Docker image containing siggraph2016_colorization

This is a Docker image based on phusion/passenger-customizable and it contains siggraph2016_colorization.

See: http://hi.cs.waseda.ac.jp/~iizuka/projects/colorization/en/  
See: https://github.com/satoshiiizuka/siggraph2016_colorization


##Installation (Linux):

```
TMP="$(mktemp -d)"  && \
git clone https://github.com/haukehein/siggraph2016_colorization.git "$TMP" --recursive  && \
cd "$TMP"  && \
bash ./build.sh  && \
cd -  &&  rm -rf "$TMP"
``` 

##Usage (example):

Open a terminal and start docker

```
docker run -it haukehein/siggraph2016_colorization:2016-04-25 /bin/bash
```

Then type inside the docker session

```
cd ~/colorize  && \
th colorize.lua ./ansel_colorado_1941.png ./ansel_colorado_1941_color.png
```
