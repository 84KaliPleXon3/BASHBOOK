# BASHBOOK
My Bash Book

### Replace newline in BASH using SED

Command
```
sed ':a;N;$!ba;s/\n/ /g'
```

Example
```
schopy@nuxmint ~ $ cat testfile
one
two
three
schopy@nuxmint ~ $ cat testfile | sed ':a;N;$!ba;s/\n/ /g'
one two three
schopy@nuxmint ~ $
```

-------------------

### Grep print only matched text (regex)

Command
```
grep -Po 'value="\K.*?(?=")'
```

Example grep inside href
```
schopy@nuxmint ~ $ cat testfile
<a href="http://test.com/uri">Click</a>
schopy@nuxmint ~ $ cat testfile | grep -Po 'href="\K.*?(?=")'
http://test.com/uri
schopy@nuxmint ~ $
```
