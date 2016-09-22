#######################################################################
#   Source:  https://github.com/haukehein/siggraph2016_colorization   #
#######################################################################

# Get this from: https://github.com/haukehein/torch7
FROM haukehein/torch7:1.0.0
MAINTAINER haukehein <BitCrusher@gmx-topmail.de>

ENV HOME /root
RUN cd && \
apt-get update && \
apt-get -y install bash sudo wget git && \
git clone https://github.com/satoshiiizuka/siggraph2016_colorization.git ~/colorize --recursive && \
cd  ~/colorize && \
bash -c './download_model.sh' && \
cd  && \
apt-get -y autoremove && \
apt-get clean && \
rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
