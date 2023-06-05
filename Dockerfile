FROM debezium/connect:latest
WORKDIR /home/kafka/.local
COPY *.json ./
RUN curl -o conf.zip https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-jdbc/versions/10.7.2/confluentinc-kafka-connect-jdbc-10.7.2.zip
RUN unzip ./conf.zip -d /kafka/connect/kafka-connect-jdbc
RUN curl -o mysql-connector-j-8.0.33.zip https://cdn.mysql.com//Downloads/Connector-J/mysql-connector-j-8.0.33.zip
RUN unzip mysql-connector-j-8.0.33.zip -d ./
RUN mv mysql-connector-j-8.0.33/mysql-connector-j-8.0.33.jar /kafka/connect/kafka-connect-jdbc