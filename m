X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2178" "Saturday" "11" "April" "2015" "20:17:31" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150411201731.GX2456@yuggoth.org>" "57" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests" nil nil nil "4" "2015041120:17:31" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests" (number mark "        fungi@yuggot Apr 11   57/2178  " thread-indent "\"[oss-security] Re: CVE Request for read-only directory traversal in Etherpad frontend tests\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26580 invoked by uid 550); 11 Apr 2015 20:17:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26553 invoked from network); 11 Apr 2015 20:17:45 -0000
Message-ID: <20150411201731.GX2456@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xkJEvbTYpfqRozZ0"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com, cve-assign@mitre.org, security@etherpad.org, John@mclear.co, tom@furycodes.com, stefan@stefans-entwicklerecke.de
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Cc: CVE Request <cve-assign@mitre.org>,
	Etherpad Security <security@etherpad.org>,
	John McLear <John@mclear.co>, Tom Hunkapiller <tom@furycodes.com>,
	Stefan =?utf-8?Q?M=C3=BCller?= <stefan@stefans-entwicklerecke.de>
Date: Sat, 11 Apr 2015 20:17:31 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for read-only directory traversal in Etherpad
 frontend tests
To: OSS Security <oss-security@lists.openwall.com>

--xkJEvbTYpfqRozZ0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in Etherpad (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public.

Title: Read-only directory traversal in Etherpad frontend tests
Reporter: Tom Hunkapiller
Versions: 1.2.0 through 1.5.3

Description:
Tom Hunkapiller reported a vulnerability in the frontend tests of
previous Etherpad releases, which are enabled by default. Parent
directory references were not correctly sanitized in frontend test
URLs of HTTP API calls, allowing an attacker to remotely read
arbitrary files on the server's filesystem with the privileges of
the account running the service.

Notes:
This bug was introduced in commit ba4ebbb which was initially
included in the 1.2.0 release, and is fixed in commit 5409eb3 which
appears in the 1.5.4 release.

References:
https://github.com/ether/etherpad-lite/commit/5409eb3

--=20
Jeremy Stanley

--xkJEvbTYpfqRozZ0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJVKYFbXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpAw8QAJ4Uj0YDZppZQ/Cs3D++V3mU
aCmYyRo75727qTo8wb2/GcDi9cUqLzZIyU/SFofLc2RGSorWQrAWcOqUckObYb9e
qHLAoF4L9gBKw/NpbBUcVYT9dSSWCNAisioRCQZ3lkHbNmfLyFQOmcXf9ILINXAs
w0zdBpFQdTzT4VVyFR3D6k883brdLPQkA+VStXpIGipQtNzNLe3gZdz9CwmXa4eF
eWjP3SnwGXD3xtr3WVmtJzDRi/iwzXi8UpMDsSmDXVlTPyLQqHDpk7Q5WKnTd9Q8
CN+nukLLgAMyhcdwxXRhtFL9bfmcGUUXowL7RMRo/X2W7QhGoRYYkynJb27lqVPO
k5wtn7vaE0hoh0DwqMhW4zIF//4AYOhWdf45To+wgF1RZhZSvArLX8nETTrjfuCA
B5JFRZSo+oLIffAsYYt0lz/eqHfEpPcD7YDQG7pXIGsZPwnrZ4FdzJXlMvNOC8fQ
qq+DegZHdZSNJ5t6aDec8RHJJ2sWYHbTYA+HIAVWdZEDmkx0L6r+h3HZprphHe2i
Q9sETXdwXKyhraCz3YqS4pa/ssO0We2a9x/SbUNmnhf09X5reRG2fObf9cV75evg
BhE8QQ4QD38IgezdHcNzg1m1MBBTX6cjxuVe+H0XlrZFYNs+9gJRyKq5OuGzMzmS
gwZ8w0V3gg6sbXUHOjiR
=l0z6
-----END PGP SIGNATURE-----

--xkJEvbTYpfqRozZ0--
