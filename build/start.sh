#!/bin/bash
# ADD ffmpeg to PATH
cat > .bashrc <<EOF

export PATH=$PATH:/home/$USER/node_modules/ffmpeg-static/bin/linux/x64

EOF

# RUN LIVEPEER
/opt/src/livepeer -rinkeby
/opt/src/livepeer_cli


# Keys are stored in /home/$USER/.lpData
