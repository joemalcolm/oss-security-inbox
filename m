X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1824" "Friday" "25" "November" "2016" "09:17:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<eefb4c78ba324c2788fe59b4fd5582d4@imshyb02.MITRE.ORG>" "44" "[oss-security] Re: CVE Request: salt confidentiality issue" nil nil nil "11" "2016112514:17:48" "[oss-security] Re: CVE Request: salt confidentiality issue" (number mark "U       cve-assign@m Nov 25   44/1824  " thread-indent "\"[oss-security] Re: CVE Request: salt confidentiality issue\"\n") "<20161125080228.GE31181@suse.com>" ("<20161125080228.GE31181@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27800 invoked by uid 550); 25 Nov 2016 14:18:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27756 invoked from network); 25 Nov 2016 14:18:01 -0000
From: <cve-assign@mitre.org>
To: <jsegitz@suse.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161125080228.GE31181@suse.com>
Message-ID: <eefb4c78ba324c2788fe59b4fd5582d4@imshyb02.MITRE.ORG>
Date: Fri, 25 Nov 2016 09:17:48 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: salt confidentiality issue

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> under certain
> circumstances Salt commands can reach, read data from and write data to,
> both minions ("original" and "impostor").

> ## 10. Here it is the bug: the minion1 is still accepted and responding.
> We could run any command for the minion2, but the minion1 will listen,
> execute and respond to them too, not only the accepted minion2.

> this is fixed by the 'rotate_aes_key' parameter
> that was introduced in 2015.8.11 to correct this issue

Use CVE-2016-9639 for the vulnerability fixed in 2015.8.11.

> the user would have to change that to be vulnerable

There is no CVE ID for the behavior (in current versions) of accepting
impostors in a "rotate_aes_key: False" configuration. The documentation
fully explains the impostor risk in that configuration.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYOEd1AAoJEHb/MwWLVhi2QdkP/3SEMFkzKwGZvwvUrqZ/wB6U
7xOuKbfKcTTHa4Fg4luHyQESeSXigrcHf4P8LqTEQIlxdGYcpIft7NRvDvKR77P/
UuWKIm5neHQjhKveYRm03QqZr43TXZW5K8V91kU7JM98Hak8gJZSgQezm0W8fzOv
Eog2xlV/Yw7vgTckUKw/0E/IugAeV6gJU4LP/cgI47vXxJHm5L4xSE2ueEMF6v2W
LH/hv+ywAemjhkg3Tu2DsZ0K+Wxe13tycSgVMVAO9GUA2HQVhShH8f9xhxMseg3m
BUUq+GpL1PLMLlhR5YoEH3mFvnBzL2BYMtBGrdwIxymgsC4OLieI1ETkHffOs+IJ
NMtC4YqHSZsE6zWP2sWpwnGD1bj6ErsrfrSOc+bsfpwhCwB0pSRaebXfjrqVwA55
fmlbCNDMAOgfYvcjDm2FWnDFVapKi5NHMuUuISHXjzQXeLtPoGuvdZQKSWcdkDVI
V/rBy0+0BtuA3aFMQTTtcevoFALyN+PIhwJwJ1xFdqJTtkY2S5TP8RAKEPfpTcU1
H+zQPWDT5CArOY+jFDgcpHKDhBi+gsJ9alJLDPA5taaCDcP/7hDQ4GSJlz5bLpzy
LZZIfhXKBdWl6r2Lk9Ct4L05agWIgPlMOPxe1RG4rv68uCdVJoKqtYu4yWp/wAlj
bJ+rXv6yW0GRshGrszMC
=vAVo
-----END PGP SIGNATURE-----
