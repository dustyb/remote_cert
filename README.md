# SSL Grabber & SSL Info

Allows you to obtain the SSL cert of a remote server. 

### SSL Grabber Usage
```bash
./ssh_grabber.sh <serverIP or hostname> <hostname:port> <filename.pem>
```

### SSL Grabber Example
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


### SSL Info Usage
```bash
./ssl_info.sh www.ethicalhackers.co.za:443
```

### SSL Info Example
```bash
./ssl_info.sh www.ethicalhackers.co.za:443
CONNECTED(00000003)
depth=2 O = Digital Signature Trust Co., CN = DST Root CA X3
verify return:1
depth=1 C = US, O = Let's Encrypt, CN = Let's Encrypt Authority X3
verify return:1
depth=0 CN = www.ethicalhackers.co.za
verify return:1
---
Certificate chain
 0 s:/CN=www.ethicalhackers.co.za
   i:/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3
-----BEGIN CERTIFICATE-----
MIIFEzCCA/ugAwIBAgISBB9cl38CBN2E3VuyBurVft9fMA0GCSqGSIb3DQEBCwUA
MEoxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MSMwIQYDVQQD
       ----- snip -----
NzEwMDcwODIwMDBaMCMxITAfBgNVBAMTGHd3dy5ldGhpY2FsaGFja2Vycy5jby56
YTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAPXu2rBJuGR0a8dbcnnV
TbT/kIiBDdQPFev6aDshM04YM9LY8hQlSCsktjhA120JtovJeKi/27eGTR9uhIDK
ok7Fyyzmaw==
-----END CERTIFICATE-----
 1 s:/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3
   i:/O=Digital Signature Trust Co./CN=DST Root CA X3
-----BEGIN CERTIFICATE-----
MIIEkjCCA3qgAwIBAgIQCgFBQgAAAVOFc2oLheynCDANBgkqhkiG9w0BAQsFADA/
MSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT
       ------ snip -----
X4Po1QYz+3dszkDqMp4fklxBwXRsW10KXzPMTZ+sOPAveyxindmjkW8lGy+QsRlG
PfZ+G6Z6h7mjem0Y+iWlkYcV4PIWL1iwBi8saCbGS5jN2p8M+X+Q7UNKEkROb3N6
KOqkqm57TH2H3eDJAkSnh6/DNFu0Qg==
-----END CERTIFICATE-----
---
Server certificate
subject=/CN=www.ethicalhackers.co.za
issuer=/C=US/O=Let's Encrypt/CN=Let's Encrypt Authority X3
---
No client certificate CA names sent
Peer signing digest: SHA512
Server Temp Key: ECDH, P-384, 384 bits
---
SSL handshake has read 3171 bytes and written 463 bytes
---
New, TLSv1/SSLv3, Cipher is ECDHE-RSA-AES256-GCM-SHA384
Server public key is 2048 bit
Compression: NONE
Expansion: NONE
No ALPN negotiated
SSL-Session:
    Protocol  : TLSv1.2
    Cipher    : ECDHE-RSA-AES256-GCM-SHA384
    Session-ID: CF33DF14806730194419CBFA48E118E0DF0E00DD856ABF8B1373A38EDDE4E8FA
    Session-ID-ctx: 
    Master-Key: F298BE622CE55BE0B6607378B3C79A85DA19CD1B87A7E1ABF6148699CF2EA5FBDC7AE9DD763EC28B37E042A39EFE35A8
    Key-Arg   : None
    PSK identity: None
    PSK identity hint: None
    SRP username: None
    TLS session ticket lifetime hint: 300 (seconds)
    TLS session ticket:
    0000 - df 75 79 e8 fa 10 94 7e-3c ec 22 c1 75 46 97 36   .uy....~<.".uF.6
                 ----- snip -----
    0090 - bc 47 32 92 1b 17 6e c6-99 37 b8 36 0e 57 8c 1c   .G2...n..7.6.W..

    Start Time: 1503925612
    Timeout   : 300 (sec)
    Verify return code: 0 (ok)
---
```






