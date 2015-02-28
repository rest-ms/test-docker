FROM dockerfile/java:openjdk-7-jdk
ADD auth-service-1.0-SNAPSHOT.jar /data/auth-service-1.0-SNAPSHOT.jar 
ADD docker.yml /data/docker.yml 
ADD private.key /data/private.key 
ADD public.key /data/public.key 
CMD java -jar auth-service-1.0-SNAPSHOT.jar server /data/docker.yml
EXPOSE 8080
EXPOSE 8081