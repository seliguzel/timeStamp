# timeStamp
Build
docker build -t static-app:v1 .

Deploy
docker run -d -p 80:80 static-app:v1

http://localhost/index.json
