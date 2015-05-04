X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1780" "Monday" "4" "May" "2015" "12:04:46" "-0400" "Tristan Cacqueray" "tristan.cacqueray@enovance.com" "<5547989E.5020802@enovance.com>" "50" "[oss-security] CVE request for vulnerability in OpenStack Keystone" nil nil nil "5" "2015050416:04:46" "[oss-security] CVE request for vulnerability in OpenStack Keystone" (number mark "        tristan.cacq May  4   50/1780  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Keystone\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14058 invoked by uid 550); 4 May 2015 16:04:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14040 invoked from network); 4 May 2015 16:04:40 -0000
X-Virus-Scanned: amavisd-new at enovance.com
Message-ID: <5547989E.5020802@enovance.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="8GG2leOBFRnC3CSUEgG9MV4wWjahF1kUN"
CC: cve-assign@mitre.org
Date: Mon, 04 May 2015 12:04:46 -0400
From: Tristan Cacqueray <tristan.cacqueray@enovance.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for vulnerability in OpenStack Keystone
To: oss-security@lists.openwall.com

--8GG2leOBFRnC3CSUEgG9MV4wWjahF1kUN
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Potential Keystone cache backend password leak in log
Reporter: Eric Brown (VMware)
Products: Keystone
Affects: versions through 2014.1.4, and 2014.2 versions through 2014.2.3

Description:
Eric Brown from VMware reported a vulnerability in Keystone. The
backend_argument configuration option content is being logged, and it
may contain sensitive information for specific backends (like a password
for MongoDB). An attacker with read access to Keystone logs may
therefore obtain sensitive data about certain backends. All Keystone
setups are potentially impacted.

References:
https://launchpad.net/bugs/1443598

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--8GG2leOBFRnC3CSUEgG9MV4wWjahF1kUN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVR5iiAAoJECK5oFySXMXYWrYH/3VSM+YGqUpRJQbg+RUXhL0I
GUd+jIzfVshFx/wD1E5DQ7uXcaMOm1aFawSMMjvcsyLjIx+vk8yhGGro5vPp+dBL
0T4mSNxViYdmG9TunU6dXKmq4zC5EqzM1AfCsnU8B4ekmvjJ01PgVe1/y9OCsXMV
MHCwIcQMbNECpLBMbJG0e3sGue1zMjA8doSyIOXBnh8OxwBDw6ZyEbXodI1pdnXy
2Y+P4RVuUac8I+r/wOSZ1MQnr69mO1w44a7qtBlAtIfMGd+4wxcP8kSiA6Gyac5i
/9c7HnnbTDXFOt7nZ5ONyJNQ7r8OKGnibdnnhsGYt4z4Q4bicgnDWcr2PpnlSJI=
=Bxcv
-----END PGP SIGNATURE-----

--8GG2leOBFRnC3CSUEgG9MV4wWjahF1kUN--
