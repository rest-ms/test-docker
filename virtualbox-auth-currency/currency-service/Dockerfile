FROM dockerfile/java:openjdk-7-jdk
ADD currency-service-0.0.1-SNAPSHOT.jar /data/currency-service-0.0.1-SNAPSHOT.jar 
ADD docker.yml /data/docker.yml 
ADD private.key /data/private.key 
ADD public.key /data/public.key 
CMD java -jar currency-service-0.0.1-SNAPSHOT.jar server /data/docker.yml
EXPOSE 8080
EXPOSE 8081