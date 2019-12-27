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

-------------------

### Convert RAW Text to Urlencode format (One-line command)

Command
```
python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])" "here ur text"
```

Example convert \['myname@email.com'\] to Urlencode
```
schopy@nuxmint ~/Downloads $ python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])" "['myname@email.com']"
%5B%27myname%40email.com%27%5D
schopy@nuxmint ~/Downloads $
```
