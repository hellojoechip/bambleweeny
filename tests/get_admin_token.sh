curl -i -X POST \
  http://localhost:8080/auth/token \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "username": "admin",
  "password": "changeme"
}'
