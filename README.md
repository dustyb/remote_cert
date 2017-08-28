# SSL Grabber

Allows you to obtain the SSL cert of a remote server. 

### Usage
```bash
./ssh_grabber.sh <serverIP or hostname> <hostname:port> <filename.pem>
```

### Example
```bash
./ssl_grabber.sh www.ethicalhackers.co.za www.ethicalhackers.co.za:443 ehackers_cert.pem
depth=2 O = Digital Signature Trust Co., CN = DST Root CA X3
verify return:1
depth=1 C = US, O = Let's Encrypt, CN = Let's Encrypt Authority X3
verify return:1
depth=0 CN = www.ethicalhackers.co.za
verify return:1
DONE
```
