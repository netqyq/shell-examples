# print header info
```bash
curl -I www.baidu.com
```
# socks request
```bash
# with proxy and user/pass, the following two commands are equal.
curl -x "socks5://user:pass@localhost:1080" http://remote-site.com
curl --socks5 "user:pass@localhost:1080" http://remote-site.com
```
