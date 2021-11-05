# Buutti Back End REST example

# Installation guide
1. Import backend\books.sql dump to database, for example "buutti"
2. set up backend and front end paths to apache on localhost
3. set up backend\config\Database.php
  3.1. private $host  = 'localhost'; // <- SQL database hostname
  3.2. private $user  = 'root'; // <- SQL database username
  3.3. private $password   = ""; // <- SQL database password
  3.4. private $database  = "buutti"; // <- database name, from step 1
4. set up \frontend\config.php
  4.1. $url = 'http://localhost/'; // <- hostname
5. open browser to path "http://localhost/frontend // or where the frontend is defined on apache