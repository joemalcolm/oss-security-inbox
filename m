X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3600" "Friday" "1" "July" "2016" "19:46:27" "+0200" "Andreas Stieger" "astieger@suse.com" "<a60e175c-5d17-9a6e-7cc6-31e0e6ae7dcb@suse.com>" "100" "[oss-security] SQLite Tempdir Selection Vulnerability" nil nil nil "7" "2016070117:46:27" "[oss-security] SQLite Tempdir Selection Vulnerability" (number mark "U       astieger@sus Jul  1  100/3600  " thread-indent "\"[oss-security] SQLite Tempdir Selection Vulnerability\"\n") "<1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>" ("<1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15487 invoked by uid 550); 1 Jul 2016 17:46:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15469 invoked from network); 1 Jul 2016 17:46:51 -0000
References: <1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
X-Forwarded-Message-Id: <1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>
Message-ID: <a60e175c-5d17-9a6e-7cc6-31e0e6ae7dcb@suse.com>
Date: Fri, 1 Jul 2016 19:46:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="MrnHqg5cFDRUkMK9ggAFlueuQqWaScckt"
Subject: [oss-security] SQLite Tempdir Selection Vulnerability

--MrnHqg5cFDRUkMK9ggAFlueuQqWaScckt
Content-Type: multipart/mixed; boundary="veMsvFmvsMEQfasqTSgggsQ5F9jDE5w6F"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <a60e175c-5d17-9a6e-7cc6-31e0e6ae7dcb@suse.com>
Subject: SQLite Tempdir Selection Vulnerability
References: <1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>
In-Reply-To: <1c99cf83-c9d9-a597-8511-9f589fb48078@korelogic.com>

--veMsvFmvsMEQfasqTSgggsQ5F9jDE5w6F
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Posted on FD:
> KL-001-2016-003 : SQLite Tempdir Selection Vulnerability
>
> Title: SQLite Tempdir Selection Vulnerability
> Advisory ID: KL-001-2016-003
> Publication Date: 2016.07.01
> Publication URL: https://www.korelogic.com/Resources/Advisories/KL-001-20=
16-003.txt
>
>
> 1. Vulnerability Details
>
>      Affected Vendor: SQLite/Hwaci
>      Affected Product: SQLite
>      Affected Version: All versions prior to 3.13.0
>      Platform: UNIX, GNU/Linux
>      CWE Classification: CWE-379: Creation of Temporary File in Directory
>                          with Incorrect Permissions
>      Impact: Data Leakage
>      Attack vector: Local

Release notes say:
> Change the temporary directory search algorithm
> <http://www.sqlite.org/tempfiles.html#tempdir> on Unix to allow
> directories with write and execute permission, but without read
> permission, to serve as temporary directories. Apply this same
> standard to the "." fallback directory.=20


The covering commits seem to be:

http://www.sqlite.org/cgi/src/info/67985761aa93fb61
Change the temporary directory search algorithm on unix so that directories=
 with only -wx permission are allowed. And do not allow "." to be returned =
if it lacks -wx permission.=20

http://www.sqlite.org/cgi/src/info/b38fe522cfc971b3
Fix the fix to the temporary directory search algorithm so that it continue=
s to return "." as a fallback if that directory has the correct permissions=
.=20

http://www.sqlite.org/cgi/src/info/614bb709d34e1148
Fix the temporary directory search algorithm for unix so that it fails grac=
efully even if all candidate directories are inaccessible. This fixes a bug=
 that was introduced by check-in [9b8fec60d8e].


Can a CVE please be assigned for this issue?

Thanks,
Andreas


--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=FCrnberg)



--veMsvFmvsMEQfasqTSgggsQ5F9jDE5w6F--

--MrnHqg5cFDRUkMK9ggAFlueuQqWaScckt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXdqx6AAoJECzWqVXhWUVGG8MQAKTTg1UGjvJ6KQUGdq21EYIx
bzNNyLleJPMCwu/wShOq5yA+GSveGtYAkWepPHClIHJs+CgXUMfjbTsTxorktZaO
RwE2BARPUo6dR7vRUhDwzuighuyXQ8hl4xclsGpPWHURlnd/JPwS3U2vrSsi6g/7
725xl8QoUp9Wc2IBIEQvcs+A0X/ehqp9kDZ4p47Na+qwNjKLcNJ0RXF+t5LIFi1v
oJjhpETyg3D7UtG7R6Egvm6wGN3fjBQOSBeQoeMTu85YVQvn5pSGXrVcWWA2VisJ
KXnQ810VVtomZ8mfiabncm9fAcBvOr5f1/+Sz6UoWQKwAki+HoM/KiGB4dUbnAag
2GGcm8lnecIY1Zd39KpcZZMvD2C7HbhEb5ElzdgBQtBgqqoIUVIDMUXNyGhj3TbY
iGAEycJAEJpGyUzea7fsg4q1oXj/YjUEyKD+265O1LF8clqS+EhifpwDo52B9s6d
3JF03w5ZqffDpjxeFQsXtT12m1c6XPXG1bj0hYjt7AqsjyRGtjg9ZVUn0NNwBRpy
hZXj2I4hSqhueYoyDjJvK87/5bnIGvZY+CheS7MOSH4yFZtW/327oii67hmX3pQj
/YrJbqzFwj673mTYCxZITQWsbBMjkRcxL73OY2y2PQZ5C13JWlMOjCnApQgdSL59
s+3rfgiiSWxdTSTfqpTF
=8b11
-----END PGP SIGNATURE-----

--MrnHqg5cFDRUkMK9ggAFlueuQqWaScckt--
