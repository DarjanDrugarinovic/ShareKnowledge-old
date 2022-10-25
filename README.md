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


If there is a problem to make a frontend work, and error is similar to ```Node.js 17.0.1 Gatsby error - "digital envelope routines::unsupported ... ERR_OSSL_EVP_UNSUPPORTED" [duplicate]```   try to edit package.json:
```
  "scripts": {
    "start": "react-scripts --openssl-legacy-provider start",
    "build": "react-scripts --openssl-legacy-provider build"
  },
  ```
  
  link: https://stackoverflow.com/questions/69665222/node-js-17-0-1-gatsby-error-digital-envelope-routinesunsupported-err-os
