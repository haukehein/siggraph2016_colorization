#Docker image containing siggraph2016_colorization

This is a Docker image based on phusion/passenger-customizable and it contains siggraph2016_colorization.
See: http://hi.cs.waseda.ac.jp/~iizuka/projects/colorization/en/  
See: https://github.com/satoshiiizuka/siggraph2016_colorization

#Installation (Linux):

  TMP=`mktemp -d`  && \
  
  git clone https://github.com/haukehein/siggraph2016_colorization.git "$TMP" --recursive  && \
  
  cd "$TMP"  && \
  
  bash ./build.sh  && \
  
  cd -  && \
  
  rm -rf "$TMP"
  
