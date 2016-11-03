FROM airdock/oracle-jdk:1.8

WORKDIR /root

RUN curl -o json-data-generator-bin.tar -L https://github.com/minyk/json-data-generator/releases/download/v1.2.2-SNAPSHOT/json-data-generator-1.2.2-SNAPSHOT-bin.tar; tar -xf json-data-generator-bin.tar -C / ; mv /json-data-generator-1.2.2-SNAPSHOT /json-data-generator

WORKDIR /json-data-generator

RUN cp conf/exampleSimConfig.json conf/SimConfig.json; mkdir logs

VOLUME ["/json-data-generator/logs", "/json-data-generator/conf"]

ENTRYPOINT ["java", "-jar", "json-data-generator-1.2.2-SNAPSHOT.jar", "SimConfig.json" ]
