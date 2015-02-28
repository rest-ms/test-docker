cd
rm -rf auth-service
mkdir auth-service
cp /media/sf_test-docker/virtualbox-auth-currency/auth-service/Dockerfile auth-service/
cp /media/sf_workspace/rest-ms/auth-service/target/auth-service-1.0-SNAPSHOT.jar auth-service/
cp /media/sf_workspace/rest-ms/auth-service/docker.yml auth-service/ 
cp /media/sf_workspace/rest-ms/auth-service/src/test/java/private.key auth-service/
cp /media/sf_workspace/rest-ms/auth-service/src/test/java/public.key auth-service/
docker build -t asiletto/auth-service auth-service/
docker run -d -p 8080:8080 -p 8081:8081 --name auth-service asiletto/auth-service