FROM        node:18 
RUN         useradd roboshop 
WORKDIR     /home/roboshop/ 
RUN         ls -ltr /home 
COPY        server.js   . 
COPY        package.json .  
RUN         npm install  
RUN         wget https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem        
RUN         chown roboshop:roboshop -R /home/roboshop/ 
ENTRYPOINT  [ "node" , "server.js" ]
