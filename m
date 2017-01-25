X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1556" "Wednesday" "25" "January" "2017" "03:46:44" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<ea48caae501a4f49b5c764f51989aecd@imshyb01.MITRE.ORG>" "40" "[oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1" nil nil nil "1" "2017012508:46:44" "[oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1" (number mark "U       cve-assign@m Jan 25   40/1556  " thread-indent "\"[oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1\"\n") "<01becbfa-72eb-838e-4cfa-0891c392326f@oracle.com>" ("<01becbfa-72eb-838e-4cfa-0891c392326f@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3508 invoked by uid 550); 25 Jan 2017 08:46:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3476 invoked from network); 25 Jan 2017 08:46:56 -0000
From: <cve-assign@mitre.org>
To: <alan.coopersmith@oracle.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <01becbfa-72eb-838e-4cfa-0891c392326f@oracle.com>
Message-ID: <ea48caae501a4f49b5c764f51989aecd@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 03:46:44 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: [tigervnc-announce] TigerVNC 1.7.1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/TigerVNC/tigervnc/commit/18c020124ff1b2441f714da2017f63dba50720ba
> https://github.com/TigerVNC/tigervnc/pull/399
> https://github.com/TigerVNC/tigervnc/releases/tag/v1.7.1

> a memory overflow issue
> via the RRE decoder. A malicious server could possibly use this issue to take
> control of the TigerVNC viewer.

>> Fix buffer overflow in ModifiablePixelBuffer::fillRect.

>> It can be triggered by RRE message with subrectangle out of framebuffer
>> boundaries.

Use CVE-2017-5581.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiGPRAAoJEHb/MwWLVhi274EP/0qCORqMxPgDJAXIuqgpAj0L
G6e5HtbqrxbWITMMCKtA4SVuoRO+vVBd4wLB9DvnTHIwkrXzZQVSWqiEfGpgEoIX
m5Chyh+uBcrsmk5tRy9DCaKTJFHWev4NRQA115DfufdHNaHUAuaJbODQwf4LRv1C
oNQWbzR/eyPix+lX9pRlu8uUmm7gZqPZJYxS7kCfmRk07N1LENDCOz5U+MexyY52
BktCV0CZ4zquvzHJTDd13OH3mpPHOrdTeyS1g7OfVe+Plk0ot4UooRCpSgGK53Ur
+/p3Ms0lSf8fGJ8efghjxEZchmRdP/6ao1v6TawKuYKRfYedxB6dnfQQfdy9XIfX
t5enoEkl0+FHx7FjjQoJFKEq/mW7tkr/5Rl1vdcNpSch3GlwR68hCISrd5EEYFCH
NC2q3ICrfeYDw9Hx1EEwioA99Rh3mVfa4E8p5r6evzhn3ZLQDg9fbRooX4p7GZEi
uEMGRSciVcYwq6L2rnKVukC1JKTxT7ZnYRbYKqz4zwjOA46MKK7VYkoyLfZq6LWS
8JxHyajn7J5nDSa/USAYLEtgK3Ijo42MYfpErogxmEcEZNWyNv4NIbzMRCn2gk7l
y5EMlp/ITscPeoptLGzIXmtvGKFl/+VU1tpMzRnVofEkLU0Jf8Nw/gsjL5qz5Z/G
469D7HNsmKu/RHofEa6p
=7pz8
-----END PGP SIGNATURE-----
