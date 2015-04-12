X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2368" "Sunday" "12" "April" "2015" "19:04:35" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150412190435.GC2456@yuggoth.org>" "60" "[oss-security] CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify" nil nil nil "4" "2015041219:04:35" "[oss-security] CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify" (number mark "        fungi@yuggot Apr 12   60/2368  " thread-indent "\"[oss-security] CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28069 invoked by uid 550); 12 Apr 2015 19:04:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28051 invoked from network); 12 Apr 2015 19:04:49 -0000
Message-ID: <20150412190435.GC2456@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0LmNHwgdxaw8o0U/"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com, cve-assign@mitre.org, security@etherpad.org, John@mclear.co, stefan@stefans-entwicklerecke.de
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Cc: CVE Request <cve-assign@mitre.org>,
	Etherpad Security <security@etherpad.org>,
	John McLear <John@mclear.co>,
	Stefan =?utf-8?Q?M=C3=BCller?= <stefan@stefans-entwicklerecke.de>
Date: Sun, 12 Apr 2015 19:04:35 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify
To: OSS Security <oss-security@lists.openwall.com>

--0LmNHwgdxaw8o0U/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in Etherpad (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public.

Title: Incomplete fix to CVE-2015-3297 in Etherpad Minify
Reporter: anonymous
Versions: 1.1.2 through 1.5.4

Description:
An anonymous reporter pointed out an incomplete fix to CVE-2015-3297
in the minify feature of current Etherpad releases. There is an
additional location in the script where backslashes are replaced
with slashes in the path parameter of HTTP API calls after path
normalization is applied, allowing an attacker supplying a slightly
different specially-crafted request to remotely read arbitrary files
on the server's filesystem with the privileges of the account
running the service.

Notes:
This bug was introduced in commit a97b83b which was initially
included in the 1.1.2 release (a later commit than the one which
introduced CVE-2015-3297 in 1.1.1), and is fixed in commit 0fa7650
which will appear in a future 1.5.5 release.

References:
https://github.com/ether/etherpad-lite/commit/0fa7650

--=20
Jeremy Stanley

--0LmNHwgdxaw8o0U/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJVKsHDXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpEskP/0822F7yxtgD3qVj+SlB8rXx
MWl+XSDrub9UUOIJ1/tWM1+E66UAfBUP1OtrQIzl2bjGo+Tgh7Z5DoKhFs82vcNP
W6feOcUu25QPH46rOigqBIOPuwCMxsUdCSljq/p02+X944xkx/S2r2YDJZu8vCxc
if8KXwKwJ0gstfJlY45rvvBDlbaTkVTabgUFBmVlhLzfGSLzqbac7v4PJR02DJcx
+J1wPgTq9zFoN0K3sluoj9cEelFPbI6VqSk1hQtrJMUoABTIbFs83Al31G9Wcp/7
Ijp3LO9LhU263eOI5iHu+CJ2TF9OwawPEsZMxRuuc7IjdqkdK3zWG9GNlV/kx0cU
p6s/BhrJ1XmkoN38e/MhHR1PphdKMDHc3NQdURUhgT3ltJi7aGGDM07Jy7xzTVJi
1Mp0THrpd/lTAN9kfU0oyG+ScMgZ+t7+kofm1I2u0KBGQUV7cIQ26O1ENdH2WwJV
ZYlK1hiytkqTUeuc16BmSvDSH6B9o2PDUn8yXx7rvrxdxX3mXAWagfQD89G7c20y
1/2fHOmIZ/cPwYdyuJ0kP2WfY9r95y2UKqCDV7jvQcJunxVnwv5Me6lHdcibvsjZ
3hoZH2SzPBczonw4DpgBakKqEoB78yApMlOUS+mTBl82b04QZDdGYKNhp/GsjiUP
xF3pojFSowv48zT/bC2S
=cb92
-----END PGP SIGNATURE-----

--0LmNHwgdxaw8o0U/--
