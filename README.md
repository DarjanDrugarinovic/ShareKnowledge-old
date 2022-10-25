# ShareKnowledge-old

Create docker container: 
```
docker run -p 3306:3306 --name my-mysql -e MYSQL_ROOT_PASSWORD=1234 -d mysql
```

"--name my-mysql" represents container name, not database name

Check container status:
```
docker ps -a
```
