# gcpapp
```
git clone https://github.com/adilkhan49/gcpapp.git
cd gcpapp
docker build -t "gcpapp-dev" .
docker container run  -p 9111:9111 --rm  gcpapp-dev
```
open localhost:9111 on browser

username/password : test/test
