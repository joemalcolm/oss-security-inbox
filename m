X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2286" "Sunday" "12" "April" "2015" "18:19:29" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150412181929.GB2456@yuggoth.org>" "59" "[oss-security] Corrections to CVE-2015-3297" nil nil nil "4" "2015041218:19:29" "[oss-security] Corrections to CVE-2015-3297" (number mark "        fungi@yuggot Apr 12   59/2286  " thread-indent "\"[oss-security] Corrections to CVE-2015-3297\"\n") "<20150410232241.GS2456@yuggoth.org>" ("<20150410232241.GS2456@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26256 invoked by uid 550); 12 Apr 2015 18:19:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26216 invoked from network); 12 Apr 2015 18:19:43 -0000
Message-ID: <20150412181929.GB2456@yuggoth.org>
References: <20150410232241.GS2456@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tS13At5XYQCJjijI"
Content-Disposition: inline
In-Reply-To: <20150410232241.GS2456@yuggoth.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com, cve-assign@mitre.org, security@etherpad.org, John@mclear.co, tom@furycodes.com, stefan@stefans-entwicklerecke.de
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Cc: CVE Request <cve-assign@mitre.org>,
	Etherpad Security <security@etherpad.org>,
	John McLear <John@mclear.co>, Tom Hunkapiller <tom@furycodes.com>,
	Stefan =?utf-8?Q?M=C3=BCller?= <stefan@stefans-entwicklerecke.de>
Date: Sun, 12 Apr 2015 18:19:29 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Corrections to CVE-2015-3297
To: OSS Security <oss-security@lists.openwall.com>

--tS13At5XYQCJjijI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The original report for CVE-2015-3297 incorrectly specified the
commit introducing the bug as a97b83b when it should actually have
been 7b518eeb. As a result the earliest affected version is actually
1.1.1 rather than 1.1.2 as was originally reported. A corrected
report can be found below.

Title: Read-only directory traversal in Etherpad Minify
Reporter: Tom Hunkapiller
Versions: 1.1.1 through 1.5.2

Description:
Tom Hunkapiller reported a vulnerability in the minify feature of
current Etherpad releases. Backslashes are replaced with slashes in
the path parameter of HTTP API calls after path normalization is
applied, allowing an attacker supplying specially-crafted requests
to remotely read arbitrary files on the server's filesystem with the
privileges of the account running the service.

Notes:
This bug was introduced in commit 7b518eeb which was initially
included in the 1.1.1 release, and is fixed in commit 9d4e5f6 which
appears in the 1.5.3 release.

References:
https://github.com/ether/etherpad-lite/commit/9d4e5f6

--=20
Jeremy Stanley

--tS13At5XYQCJjijI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJVKrcxXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpmTcP/3V0LGQSdQ3pAVW0+PPr6oW9
kGAgeSwiMOJf8l3v5/usqhDe9kX2E6yfcBNaDoeDQRYzNRePBxWDtdM11lHTaTRm
VdF0duAOnm5OY/Kpc7C9hfbxDN5hacSHuvLm1JDoklUMCcAHc2DcLXwRvacp2GvK
Lz40GPLAAQ1wr9aHqD+XUiIfL2gfLB2unW0NVJRTf7iQbte2k/lNP/3+o0fxmW0R
gw+7TssTV8xrH00oJ58itEOZ+dFzHiQnWuptDGv1d8gbfLvpuIbsJBEg/zRbwiyx
QGwbWIHWAWMnmIm1ZE7ioh19GbV2h366ZICjufxFU5Zgr2vJh77Nb8TFyY3E1FOS
QO6fcgkM4qBw4pevrjuhML4SLrypX1bB//QUZ0JmD16WDKQYsrlOavJ6LX5Qxasz
aTkNes81VdEuq4ORNX49kyR2SmTvnCxF89HKRMejk/Y2f2BEgNUV+3g95bTGuLc6
DtV7KN9e8J8yEbZjXb4aqcUg+NrbW3c/pMmhMMfoSIkdfhGg/qe1VaT9npBqhQU/
6jPm1owrvyk6rZydhg62BWfoQAWcadDDGyyWTffqRRKOYubgryug3tgEHWuqif11
wL1vXb8Yvu3PRsJVlz3xE0wzvvbQNEQePEQ1SVSsdNDQ7Lml9hNptV4pvt6VYewg
NlKGK+7+Cvlnl+JDr8Oa
=GRpj
-----END PGP SIGNATURE-----

--tS13At5XYQCJjijI--
