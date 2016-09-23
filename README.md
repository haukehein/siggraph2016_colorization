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
 
 
 
##Citing

```
@Article{IizukaSIGGRAPH2016,
   author = {Satoshi Iizuka and Edgar Simo-Serra and Hiroshi Ishikawa},
   title = {{Let there be Color!: Joint End-to-end Learning of Global and Local Image Priors for Automatic Image Colorization with Simultaneous Classification}},
   journal = "ACM Transactions on Graphics (Proc. of SIGGRAPH 2016)",
   year = 2016,
   volume = 35,
   number = 4,
 }
 ```
