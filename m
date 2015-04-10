X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2202" "Friday" "10" "April" "2015" "23:22:42" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150410232241.GS2456@yuggoth.org>" "57" "[oss-security] CVE Request for read-only directory traversal in Etherpad Minify" nil nil nil "4" "2015041023:22:42" "[oss-security] CVE Request for read-only directory traversal in Etherpad Minify" (number mark "        fungi@yuggot Apr 10   57/2202  " thread-indent "\"[oss-security] CVE Request for read-only directory traversal in Etherpad Minify\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23785 invoked by uid 550); 10 Apr 2015 23:22:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23761 invoked from network); 10 Apr 2015 23:22:55 -0000
Message-ID: <20150410232241.GS2456@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gLcqQrOcczDba7nC"
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
Date: Fri, 10 Apr 2015 23:22:42 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for read-only directory traversal in Etherpad Minify
To: OSS Security <oss-security@lists.openwall.com>

--gLcqQrOcczDba7nC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in Etherpad (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public.

Title: Read-only directory traversal in Etherpad Minify
Reporter: Tom Hunkapiller
Versions: 1.1.2 through 1.5.2

Description:
Tom Hunkapiller reported a vulnerability in the minify feature of
current Etherpad releases. Backslashes are replaced with slashes in
the path parameter of HTTP API calls after path normalization is
applied, allowing an attacker supplying specially-crafted requests
to remotely read arbitrary files on the server's filesystem with the
privileges of the account running the service.

Notes:
This bug was introduced in commit a97b83b which was initially
included in the 1.1.2 release, and is fixed in commit 9d4e5f6 which
will appear in a future 1.5.3 release.

References:
https://github.com/ether/etherpad-lite/commit/9d4e5f6

--=20
Jeremy Stanley

--gLcqQrOcczDba7nC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJVKFtBXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpRCwQAJGM5thLNzDKfPIZzwgfw9Uf
qK7LD31P0oE1Y6JxVpy7LyySI6gIpqrzqoJcrN5y6cCfGn8fvP2/DylVmxsDlbaq
WnqYAiDYNIuigdHZZUDsfzK7u8xXSqILOSGFTVxAyQNl2q3zddhZ8qq29q/XoIiP
mJKDKb0kcic5eB7mQIJurK+aS7hGOBYY8siDZuEern/Fjlt6mXA3Gqo0Z0wZJ8yu
lpEezeUksbyR8U/ooAfZmWUS+3iA1YSDFNc6JEdLw3wZGuwyAODZvveLS8NcAk/A
ts6zONs5BoFy0JJ6QtveQdQqi0lh0t1XJ3TBVaTTD3hpq/YnXDEzPQIa3C/MRTMN
EhyLgbvKFjuzSRPhAWgRgum8QTMIKsYrI3I0uNlpxB31mDo3OtfnjO6ARp1HwiK+
HMumpp3GPdrl/MOfpDXKvFYCKSkqCaaOiwaZXHV8unKCwdGPJylfb+wj1YpVK5py
IPoguZxmNU7TpR8iPTDOeLrfQEwj7d0UI683bituB0SlxDBcvUILgIEIzqQ6b5n2
KCwN+ceRNJvUKn5h3S2MqM8dX63RFcgZZFwrSB6KvvkVvyiq7kUbZB7uctBw0ZkN
QNarGAYoczB2giNQEevxoh1UmmzjfB3r0/JRCtNQ318NfY8T72z+kx+4kMuLgdKg
Qn9OP+r1UnZg8Rgj5Bjh
=YTWE
-----END PGP SIGNATURE-----

--gLcqQrOcczDba7nC--
