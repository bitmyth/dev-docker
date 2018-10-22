FROM myubuntu
RUN curl -sL https://deb.nodesource.com/setup_6.x -o /nodesource_setup.sh
RUN bash /nodesource_setup.sh
RUN DEBIAN_FRONTEND=noninteractive apt install -y nodejs 
RUN npm install -g nrm
RUN nrm add seiue http://npm.seiue.com:4873 && nrm use seiue
