X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1380" "Sunday" "8" "January" "2017" "14:47:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<328b2aec213f4e34b3cbc4c6b4707b37@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm" nil nil nil "1" "2017010819:47:40" "[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm" (number mark "U       cve-assign@m Jan  8   37/1380  " thread-indent "\"[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm\"\n") "<20170108084501.ncsnqkhyytpawpbh@eldamar.local>" ("<20170108084501.ncsnqkhyytpawpbh@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28622 invoked by uid 550); 8 Jan 2017 19:47:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28590 invoked from network); 8 Jan 2017 19:47:52 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170108084501.ncsnqkhyytpawpbh@eldamar.local>
Message-ID: <328b2aec213f4e34b3cbc4c6b4707b37@imshyb02.MITRE.ORG>
Date: Sun, 8 Jan 2017 14:47:40 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> an exploitable crash in wrestool from the icoutils

> https://bugs.debian.org/850017
> https://anonscm.debian.org/git/users/cjwatson/icoutils.git/plain/debian/patches/check-offset-overflow.patch

>> wrestool/fileread.c

>> On 64-bit systems, the result of subtracting two pointers exceeds the
>> size of int

Use CVE-2017-5208.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYcpb7AAoJEHb/MwWLVhi2kLwP/A+G4NM3R2Ad/IKIDemtxNpC
qKNMumJCh3kS2tiUcWZgfChZiED2lpQIQRwE6z/DQznt8iXbIxEolipRBj8PlEIe
Z8L7A10OxVQLKf9pYZmN4JmomcAFcI1Nzt3sgMsS+7leClf606kXAdPiVlxjgH3E
LFaQRqatsD1UA7eftvul8MZeBFQUtQttH6fIvqj9/L3HifNQ6xYkBdT/8C8MbEku
KzRNOFk803YBrfbgvsZhk65N8KXpX+fBXiXS8gu7TyUxnS1UxqaT8F7NkoPiHCqk
M2t+l5M152nD/Gjf0/2y+Nfb+fi3sNDvLgE2ElmnRmC2InGI1JBITEtuflM5znYn
z6Wz5ts1rvQenqEzAxPLYBFdUTMFyyheqLKRYo2I+tQ5LM69HlHZnsTclGHGCUyx
tD+MPLz54kuPXaXj6HUG+eK49QxWLoDTlRS/TOrCUC1YsXIRfleo1QO00BcpBVHw
jcdEvebEXzCMG0+Av6pcBKmBwlGOy+y7ckJHUnQ7c8PvbKlk5nunlSmrLqHvDBSL
V4V4rE5WmFu/GSuGcr+pz/IhFZViwDgydz7dagTv8CJsMAvJGean93r0AO+WXhA9
jdFg5tbrvzH3nHh1v5GZ/SZaWi34de1/9rG3cxLmlMStyOGMTxpOeO/Scb9Bkqp2
6d2/HyseA0dKnDgxtrIi
=vxi7
-----END PGP SIGNATURE-----
