#######################################################################
#   Source:  https://github.com/haukehein/siggraph2016_colorization   #
#######################################################################

# Get this from: https://github.com/haukehein/torch7
FROM haukehein/torch7:1.0.0
MAINTAINER haukehein <BitCrusher@gmx-topmail.de>

ENV HOME /root
SHELL ["/bin/bash", "--login -c"]

RUN cd && \
apt-get update && \
echo "\n\nInstalling LUA dependencies ..." && \
cd ~/torch && \
luarocks install nn && \
luarocks install image && \
luarocks install nngraph && \
echo "\n\nDownlaoding and installing siggraph2016_colorization ..." && \
git clone https://github.com/satoshiiizuka/siggraph2016_colorization.git ~/colorize --recursive && \
cd  ~/colorize && \
./download_model.sh && \
cd  && \
apt-get -y autoremove && \
apt-get clean && \
rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
