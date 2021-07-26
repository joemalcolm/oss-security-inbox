X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3051" "Monday" "26" "July" "2021" "14:47:04" "+0200" "Peter van Dijk" "peter.van.dijk@powerdns.com" nil "79" "[oss-security] security advisory 2021-01 for PowerDNS Authoritative Server 4.5.0" nil nil nil "7" nil nil (number mark "U       peter.van.di Jul 26   79/3051  " thread-indent "\"[oss-security] security advisory 2021-01 for PowerDNS Authoritative Server 4.5.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] security advisory 2021-01 for PowerDNS Authoritative Server 4.5.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18334 invoked by uid 550); 26 Jul 2021 13:21:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7287 invoked from network); 26 Jul 2021 12:47:17 -0000
Message-ID: <9120e36f89c0b082a73fa2dfaf46036d09d6f22e.camel@powerdns.com>
From: Peter van Dijk <peter.van.dijk@powerdns.com>
To: oss-security@lists.openwall.com
Date: Mon, 26 Jul 2021 14:47:04 +0200
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-lrO9/G6P5JSZq0igEc3A"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Subject: [oss-security] security advisory 2021-01 for PowerDNS Authoritative Server 4.5.0

--=-lrO9/G6P5JSZq0igEc3A
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

today we have released PowerDNS Authoritative Server 4.5.1, fixing a
remotely triggered crash present in version 4.5.0. No other versions
are affected.

Tarballs and signatures are available at=20
https://downloads.powerdns.com/releases/, and a single patch is
available at https://downloads.powerdns.com/patches/2021-01/. However,
4.5.1 contains no other changes.

Please find the full text of the advisory below.

PowerDNS Security Advisory 2021-01: Specific query crashes
Authoritative Server

-  CVE: CVE-2021-36754
-  Date: July 26th, 2021
-  Affects: PowerDNS Authoritative version 4.5.0
-  Not affected: 4.4.x and below, 4.5.1
-  Severity: High
-  Impact: Denial of service
-  Exploit: This problem can be triggered via a specific query packet
-  Risk of system compromise: None
-  Solution: Upgrade to 4.5.1, or filter queries in ``dnsdist``

PowerDNS Authoritative Server 4.5.0 (and the alpha/beta/rc1/rc2
prereleases that came before it) will crash with an uncaught out of
bounds exception if it receives a query with QTYPE 65535. The offending
code was not present in earlier versions, and they are not affected.

Users that cannot upgrade immediately, but do have dnsdist in place,
can use dnsdist to filter such queries before they do harm, with
something like ``addAction(QTypeRule(65535),
RCodeAction(DNSRCode.REFUSED))``.

When the PowerDNS Authoritative Server is run inside a supervisor like
supervisord or systemd, an uncaught exception crash will lead to an
automatic restart, limiting the impact to a somewhat degraded service.

We would like to thank Reinier Schoof and Robin Geuze of TransIP for
noticing crashes in production, immediately letting us know, and
helping us figure out what was happening.

Kind regards,
--=20
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

--=-lrO9/G6P5JSZq0igEc3A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQJQBAABCgA6FiEE+64DI4IcdwalyhUb3PUT+n7tGfMFAmD+rsgcHHBldGVyLnZh
bi5kaWprQHBvd2VyZG5zLmNvbQAKCRDc9RP6fu0Z8zE/EADMHmZvEv33MWSftdEy
ND1er1tois+HDOAjaKqGXHB6TXTeK0XnndzbrpRZvJwOQrmVyxLhtq2uDbHc5k9c
Pz8Yb9qN/C5eYyLm0U5icABufalV8LLehR5gZgI/btmTMHdrTD6Npt/Hkq0eerAX
n6IQrGkeiZuuzfgAMBcgKHRUpB7RrkFwsVxkRT4+2/scBmyIhwh7J+ZUn5yg2q3F
wmY9MKRTQ7wmgvNo5+5V5xeFfFj6nX6VZbr4TY7p84reupCdBWGhEJJ2A6TUJIQm
zfXciZo9qs+2Qe43cB3z61uJrtbFms5LRjFg2dZp4HPx99h7FuwyCeQsfF4G5vgd
DQ3m8SOWVNu07AFUx5jJMgibUbA9WVCCWQ6Nh4M1xgvUm+T2uQAoZhzG5DCrXffX
rgIH73iD/WEO0CpeIZw2l5n5M1ZmnqDEswUPHi6FSLvsLaqm7qbUHJo6qPmDicWC
C/HG2qrCANUHQyFIcE26840B3LFdBF+kfieURMRtcfNuV2Q5PxEzRbGKw7hH0LAU
SvIwWWJFLs95UoFXDmVlTk8ExQMRWa7oZkTim0rpzOl4mz5TOKFRLsOENo0T5hPB
+36gOqyTVPH6ZZwelcBYXZOK+GzrBAlWm+6T1bBfY+DR3EEsVZ8EDwzBl1Gb0xdt
b/9M5TweGpomVe2hqe/UcD8VNQ==
=00j3
-----END PGP SIGNATURE-----

--=-lrO9/G6P5JSZq0igEc3A--

