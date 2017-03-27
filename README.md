# Shell Scripting Examples. Edit



## Powerful Shell Commands
- grep
```
grep -r -n "main()" .
```
- sed
```
sed 's/pattern/replace_string/' file
# or
cat file | sed 's/pattern/replace_string/'
# replace all matched lines
sed 's/pattern/replace_string/g' file
# match line contains second, replace it to new line
sed '/second/c\new line' file
```
- awk
```
awk '{print $1}' access.log | uniq -c | sort -k1 -nr | head -10
netstat -ant | grep ^tcp | awk '{stat[$6]++} END{for( i in stat) {print i,stat[i]}}'
```
- tr
``` 
echo file | tr -s '[:space:]' ':' 
```
- cut
``` 
cut -d":" -f1,3
```
- sort
```
sort -k1 -nr
```
- uniq
```
uniq -c
```
- ip
``` 
ip addr, ip route, ...
```
- ss
```  
ss -s , ss -ntlp , ss -antp
```
- netstat 
```
netstat -antp , netstat -ntlp , netstat -nutp
```
- lsof
```
# on mac
lsof -i -n -P

lsof -i:22

```

## License
license MIT
