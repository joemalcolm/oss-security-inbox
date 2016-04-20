X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1498" "Tuesday" "19" "April" "2016" "22:51:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160420025113.512A752E005@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: Bypass Restricted Python - Plone" nil nil nil "4" "2016042002:51:13" "[oss-security] Re: CVE Request: Bypass Restricted Python - Plone" (number mark "U       cve-assign@m Apr 19   37/1498  " thread-indent "\"[oss-security] Re: CVE Request: Bypass Restricted Python - Plone\"\n") "<CAL8hw9Gid=9bUYu+MYmUGpu2DJrXDG_qwJdM4nu3gLUKYBqDsQ@mail.gmail.com>" ("<CAL8hw9Gid=9bUYu+MYmUGpu2DJrXDG_qwJdM4nu3gLUKYBqDsQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24206 invoked by uid 550); 20 Apr 2016 02:51:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24188 invoked from network); 20 Apr 2016 02:51:24 -0000
From: cve-assign@mitre.org
To: vangheem@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAL8hw9Gid=9bUYu+MYmUGpu2DJrXDG_qwJdM4nu3gLUKYBqDsQ@mail.gmail.com>
Message-Id: <20160420025113.512A752E005@smtpvbsrv1.mitre.org>
Date: Tue, 19 Apr 2016 22:51:13 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Bypass Restricted Python - Plone

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://plone.org/security/20160419/bypass-restricted-python
> 
> A user who can create or edit templates(usually only admins) can
> bypass Restricted Python.
> 
> This vulnerability should only affect site administrators who have ZMI
> access, or when you gave users permission to edit PloneFormGen
> templates. Only Chameleon (five.pt) is affected. This package is used
> by default in Plone 5, and can be added in Plone 4.

Use CVE-2016-4043.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXFu1xAAoJEHb/MwWLVhi2I9cP/0SBPz78iiLQw+BDo5O/Veu7
uKDU4AWcY7G4BXvLpC8aOaTDN19o5RlAp/8cXgZBZ0e0jL4wxqDlakmn5enqDVlB
FAMzNppGCKPbP7mMhjhp0Y09oqkEBDpcK8VTiYoLCEP8EkyBRVyL2GnM1Y2nRrXj
RDg/lxskoIE9MnExPAMGzpzWzuQk5GVDSz0hh39IxgQhx0/7rhKSxhN6RT5GdrAx
Uafip+Vb/ezJKe/TvSr9IDKJ3SZjKVa7nFqlsQaTTIve3MZ81H/4zCbn0X+V6MX6
USLbOut1LywohvVLmegO/uf8w3arT+szDYThljp0HpraGHQDt/YRaYl4D3BjVcb0
Q4xhaIWGTPnV5Axoh2yj2RVl6Yx8+sDMQvT6HANcpEU0wcPNvbouTu8EY0mAxToI
g33vyCkidscrt3PFQuUVbfbxIqclncqKNtf9i7+0jCYQZEIbR7V44rqWwMVCJ1VZ
a2UunPe0h2COZ0m7WifM2b82i8ox87l7qcw3CppysKOS20i1h4L8KkW2qkdcQJCm
jng9DWicSo95sxjUBXajYvKHBCALHXqSiKiKq6Vu+vX+y79JW6lb3HRxJzpjhMg2
imD3xLmh9jCmBiIKqm3oj/tweMlAX1b8llz7AUbkLu3TepzsGhTHNx+QngAg80Bh
zlAz4kl1XvkyBWijKrEb
=P6qe
-----END PGP SIGNATURE-----
