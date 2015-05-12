X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1752" "Tuesday" "12" "May" "2015" "14:37:35" "-0400" "Tristan Cacqueray" "tristan.cacqueray@enovance.com" "<5552486F.4090707@enovance.com>" "50" "[oss-security] CVE request for vulnerability in OpenStack Horizon" nil nil nil "5" "2015051218:37:35" "[oss-security] CVE request for vulnerability in OpenStack Horizon" (number mark "        tristan.cacq May 12   50/1752  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Horizon\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22311 invoked by uid 550); 12 May 2015 18:37:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22285 invoked from network); 12 May 2015 18:37:30 -0000
X-Virus-Scanned: amavisd-new at enovance.com
Message-ID: <5552486F.4090707@enovance.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="HNUxjjU2Fd9egtAp9ctlkbG1geoKMH4En"
Date: Tue, 12 May 2015 14:37:35 -0400
From: Tristan Cacqueray <tristan.cacqueray@enovance.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for vulnerability in OpenStack Horizon
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--HNUxjjU2Fd9egtAp9ctlkbG1geoKMH4En
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Persistent XSS in Horizon metadata dashboard
Reporter: Sunil Yadav (IBM)
Products: Horizon
Affects: version 2015.1.0

Description:
Sunil Yadav from IBM Security Services reported a persistent XSS in
Horizon. An authenticated user may conduct a persistent XSS attack by
setting a malicious metadata to a Glance image, a Nova flavor or a Host
Aggregate and tricking an administrator to load the update metadata
page. Once executed in a legitimate context this attack may result in a
privilege escalation. All Horizon setups are affected.

References:
https://launchpad.net/bugs/1449260

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--HNUxjjU2Fd9egtAp9ctlkbG1geoKMH4En
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVUkhzAAoJECK5oFySXMXYM9wIAI55Sg1gGQoxy81fnhNYTfgP
GuD9Nf9JTbxR2P6jF7/22YRTDasJ8sk6XP02m6l1eiKBuVDc+r4f06vuNY+zZ9K5
LGyacrf6/MVKfbDeikG3v5d1Ik/VMxD0ZAJkra0uOO6pFTUmUbY8qGTwxkRBShEx
JXs9zZNM5vIyz4TYoS7G9fw/GJDQMj9LMfJDGzdRmWj8TVTcOHYoH78x+0s24vt8
y62dO0TIMz+tYs94ZUHY++gc7Ayo/leKRVmV+lwonJ8iwrI9YvHpzPnr6mnDSFIc
drn5q6FxIyFJE6wwv7v9lFQV+1VD0SIfiKI00C4wEkKVPnKZUW6vFFK+0EpYsf8=
=BVIl
-----END PGP SIGNATURE-----

--HNUxjjU2Fd9egtAp9ctlkbG1geoKMH4En--
