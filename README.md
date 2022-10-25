# ShareKnowledge-old

## Database

Create docker container: 
```
docker run -p 3306:3306 --name my-mysql -e MYSQL_ROOT_PASSWORD=1234 -d mysql
```

"--name my-mysql" represents container name, not database name

Check container status:
```
docker ps -a
```

You can use MySQL Workbench client to access database. To create database there is share_knowledge_structure.sql file inside database directory and for data
use share_knowledge_structure.sql.


## Backend
```
npm i 
node app.js
```

## Frontend


To run frontend, execute ```npm i --legacy-peer-deps```, not just ```npm i``` and after that ```npm start```

### Possible problems:

If there is a problem to start frontend, and error is similar to ```Node.js 17.0.1 Gatsby error - "digital envelope routines::unsupported ... ERR_OSSL_EVP_UNSUPPORTED" [duplicate]```   try to edit package.json:
```
  "scripts": {
    "start": "react-scripts --openssl-legacy-provider start",
    "build": "react-scripts --openssl-legacy-provider build"
  },
  ```
  
  link: https://stackoverflow.com/questions/69665222/node-js-17-0-1-gatsby-error-digital-envelope-routinesunsupported-err-os
