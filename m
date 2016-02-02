X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2124" "Tuesday" "2" "February" "2016" "14:37:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160202193717.ED51C7BC0FE@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: Socat security advisory 8 - Stack overflow in parser" "^Cc:" nil nil "2" "2016020219:37:17" "[oss-security] Re: Socat security advisory 8 - Stack overflow in parser" (number mark "        cve-assign@m Feb  2   46/2124  " thread-indent "\"[oss-security] Re: Socat security advisory 8 - Stack overflow in parser\"\n") "<56AF7B26.9010700@dest-unreach.org>" ("<56AF7B26.9010700@dest-unreach.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15884 invoked by uid 550); 2 Feb 2016 19:37:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15859 invoked from network); 2 Feb 2016 19:37:29 -0000
In-Reply-To: <56AF7B26.9010700@dest-unreach.org>
Message-Id: <20160202193717.ED51C7BC0FE@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Tue,  2 Feb 2016 14:37:17 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Socat security advisory 8 - Stack overflow in parser
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>   This vulnerability can only be exploited when an attacker is able to
>   inject data into socat's command line.
>   A vulnerable scenario would be a CGI script that reads data from
>   clients and uses (parts of) this data as hostname for a Socat
>   invocation.

This was sent to the oss-security list as a published advisory, not as
a CVE ID request. Is there anyone (e.g., a Linux distribution) who is
planning to re-announce this to a different audience in a way that
would make a CVE ID especially useful? Note that there will be a
CVE ID for the simultaneously released "security advisory 7."

At this point, the MITRE CVE team does not see a realistic
exploitation scenario (for security advisory 8) that would be best
categorized as a socat problem that requires a socat CVE ID. For
example, "a CGI script that reads data from clients and uses (parts
of) this data as hostname for a Socat invocation" might be better
categorized as an SSRF vulnerability in that CGI script (and
potentially site-specific unless such a CGI script already exists in
packaged code).

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWsQPRAAoJEL54rhJi8gl58g4QAJY2pF4cO5bxQA7rfwlGajZq
/ZL6f4v59/LZpe9Vpa+HTUwXGe+cRv68Zvgp37K1gWqnmazIwgCmJGIZ3BvVJ019
v/AizZt7aCOZf8X2VTK82ylQU56bcOdmXCKZ9Xb9OHukIpK918bILOPb+t2HmqCe
jOHNyzMRou9R/23qan8WQzW78JmK1D8E2DjHZbdHDkKm83j2z+CKI2H2hHkaYOy+
QHqMiJuo6PMPLObxPmF1HY8cqN+EIl2LPt0VShAr2uYjlyB3eCpY2kdfJQUSQ6FW
RxBa5bue+X0fv8IenUEtQsEcVJgS5jWwPavE7mrR8fkeyjJM+WGyilf2/iXuofBx
zasCOaH82xteaIGoXW99OmLhFjMDPCIcN6lD33xu/GtF/Xg9OBbYeMfsjb1FoLsf
w6lRyW3PyRRDTzZoeLpRhacK759eJvBBDL8JUqeJTsKOhKdnbOD47wHYrVboypbC
ZAcS8Jnl8wrTslP6iscad32J6plr8pIzoyo8iOks6oKx1BnaZTQn99MOHt7GBBN6
7Io9JMcjDcael9iDIlM7Gwv+AzAUqDZuKZ6CIPPwbVklVQYM7zTBx4Ch2+7KB8yt
5r8y5GgzFO29ryA6T+cBwFDFcAFsJf6D0t5qV39mELAi49R6Qw/GI7huLsi54W9B
0fUfuGVElnJEWu8NEth2
=FQZ0
-----END PGP SIGNATURE-----
