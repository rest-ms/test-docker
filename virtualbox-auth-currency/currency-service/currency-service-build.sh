cd
rm -rf currency-service
mkdir currency-service
cp /media/sf_test-docker/virtualbox-auth-currency/currency-service/Dockerfile currency-service/
cp /media/sf_workspace/economy2/currency-service/target/currency-service-0.0.1-SNAPSHOT.jar currency-service/
cp /media/sf_workspace/economy2/currency-service/docker.yml currency-service/ 
cp /media/sf_workspace/rest-ms/auth-service/src/test/java/private.key currency-service/
cp /media/sf_workspace/rest-ms/auth-service/src/test/java/public.key currency-service/
docker build -t asiletto/currency-service currency-service/
docker run -d -p 8070:8080 -p 8071:8081 --name currency-service asiletto/currency-service