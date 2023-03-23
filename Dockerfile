FROM        node
COPY        server.js   . 
COPY        package.json .  
RUN         npm install  
RUN         mkdir -p /home/roboshop/catalogue/
ADD         https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem  /home/roboshop/rds-combined-ca-bundle.pem
ENTRYPOINT  [ "node" , "server.js" ]
