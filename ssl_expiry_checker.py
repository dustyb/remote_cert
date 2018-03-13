from datetime import datetime
import OpenSSL
import ssl, socket, sys

_domain = sys.argv[1]

_today = datetime.now()
cert=ssl.get_server_certificate((_domain, 443))
x509 = OpenSSL.crypto.load_certificate(OpenSSL.crypto.FILETYPE_PEM, cert)

datetime_object = datetime.strptime(str(x509.get_notAfter()), '%Y%m%d%H%M%SZ')

_delta = datetime_object - _today
print "Expires on:", datetime_object.year, datetime_object.month, datetime_object.day
print _delta.days, "days left"