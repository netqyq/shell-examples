
###

```
curl http://example.com/test/submit.php -d "host=test-host&user=slynux"
curl -i -H 'Accept: application/json' -d 'name=Foo&status=Bar'  http://localhost:32776/json
```

### create
```
curl -H "Content-Type: application/json" -X POST -d '{"title":"abc","content":"xyz", "published":true}' \
http://localhost:3012/posts

```
