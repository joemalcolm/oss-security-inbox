X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1833" "Wednesday" "12" "October" "2016" "00:07:37" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161012040737.9D9D152E019@smtpvbsrv1.mitre.org>" "44" "[oss-security] Re: CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification" nil nil nil "10" "2016101204:07:37" "[oss-security] Re: CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification" (number mark "U       cve-assign@m Oct 12   44/1833  " thread-indent "\"[oss-security] Re: CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification\"\n") "<878ttvw0ds.fsf@gnu.org>" ("<878ttvw0ds.fsf@gnu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14147 invoked by uid 550); 12 Oct 2016 04:07:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14129 invoked from network); 12 Oct 2016 04:07:49 -0000
From: cve-assign@mitre.org
To: ludo@gnu.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, wingo@pobox.com, mhw@netris.org
In-Reply-To: <878ttvw0ds.fsf@gnu.org>
Message-Id: <20161012040737.9D9D152E019@smtpvbsrv1.mitre.org>
Date: Wed, 12 Oct 2016 00:07:37 -0400 (EDT)
Subject: [oss-security] Re: CVE request: GNU Guile <= 2.0.12: Thread-unsafe umask modification

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The mkdir procedure of GNU Guile, an implementation of the Scheme
> programming language, temporarily changed the process' umask to zero.
> During that time window, in a multithreaded application, other threads
> could end up creating files with insecure permissions. For example,
> mkdir without the optional mode argument would create directories
> as 0777.
> 
> This can be worked around by always passing the optional mode argument
> to Guile's mkdir procedure.
> 
> This will be fixed in Guile 2.0.13, to be released shortly.
> 
> Patch: http://git.savannah.gnu.org/cgit/guile.git/commit/?h=stable-2.0&id=245608911698adb3472803856019bdd5670b6614
> Upstream bug report: http://bugs.gnu.org/24659

>> changes the process' umask globally for a short duration

Use CVE-2016-8605.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX/baaAAoJEHb/MwWLVhi2DcYQAKDqyMz9vFBIQlUp04fqGCLm
+2Edb5JItWj6y0x7F8rt+LM/jfxTHFq+HxH7pRQS59rERvAbhhUFU2Q+AhUeZRM9
mpzxr0bGwlDGatdSLQbgrD5+BGCi/FrtIg3ggQxoGXMaKLWu6yjNg7c+l6Bp37ic
h/XZ5Ur2M4dfaDnn1WGWdtAbcLbBKevglzKpbYcrgU4mokPiZ/Axzhp4zuxbvXP4
uVKgVQTOeFcp2NstpDdzhomSvIdya1owA6DJd1HsiTgCtV1oKJ6Qy0T5uQ5sUplX
6/ecG+gbebj1M52AFsmYMFuG3r6Ho9u1NB4CCzW27yuwmZU9w8gAHrMBlNxu8EZl
M/xCgLr8JO8ve5zxwvdNdfadBtsXUgS2n0HgEMHQXOn+a2wrC+fBTG41OvC3qre4
x3GkXOdC8IhAVXO2OVxUl7oo57nahSKct7Q8+Mh3BQ5PnzC2IqpYdN0riC6G/pCy
YXS1ySEYB1nzQGdP+5VCLCOu0jKpQ2Bp/byOBljKHTc7mv/s1HEpke3n8/FNwuFq
1nxFlNU0WzmpEpzYhAd7S2CxeDBhO2HVKeg9eCAdnMmRpytlQhKQN/S5wwRxcZOr
3QCwcJldiufM7wv2D0jmiUR05AbWsG6Hj1femNoP3rxgOQIoYjwdEFpsDFKcSEMq
DtztboX+z/tA/saF7SWP
=ZBNv
-----END PGP SIGNATURE-----
