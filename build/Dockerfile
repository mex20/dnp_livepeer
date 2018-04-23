FROM ubuntu:latest

WORKDIR /opt/src


# Get Ubuntu in shape
sudo apt-get update
sudo apt-get install nodejs npm 



# INSTALL LIVEPEER NODE
RUN npm install -g ffmpeg-static
RUN wget "https://github.com/livepeer/go-livepeer/releases/download/0.1.17/livepeer_linux"
RUN tar -xvf livepeer_linux.tar
RUN mv ./livepeer_linux/livepeer ./livepeer
RUN mv ./livepeer_linux/livepeer_cli ./livepeer_cli

COPY run.sh /usr/sbin/run.sh
RUN chmod 755 /usr/sbin/run.sh

CMD ["/usr/sbin/run.sh"]
