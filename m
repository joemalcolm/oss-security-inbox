X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Wednesday" "22" "July" "2015" "09:39:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150722133908.B9BE16C07C6@smtpvmsrv1.mitre.org>" "41" "[oss-security] Re: CVE Request: October CMS - Stored XSS in image caption tag" nil nil nil "7" "2015072213:39:08" "[oss-security] Re: CVE Request: October CMS - Stored XSS in image caption tag" (number mark "U       cve-assign@m Jul 22   41/1712  " thread-indent "\"[oss-security] Re: CVE Request: October CMS - Stored XSS in image caption tag\"\n") "<CABpk8vbGz+TU4VvX1Cg_yr-M9DRe3kNm+q1AG-1djUBEGgN84g@mail.gmail.com>" ("<CABpk8vbGz+TU4VvX1Cg_yr-M9DRe3kNm+q1AG-1djUBEGgN84g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29978 invoked by uid 550); 22 Jul 2015 13:39:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29951 invoked from network); 22 Jul 2015 13:39:20 -0000
From: cve-assign@mitre.org
To: jmabhishek4@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CABpk8vbGz+TU4VvX1Cg_yr-M9DRe3kNm+q1AG-1djUBEGgN84g@mail.gmail.com>
Message-Id: <20150722133908.B9BE16C07C6@smtpvmsrv1.mitre.org>
Date: Wed, 22 Jul 2015 09:39:08 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: October CMS - Stored XSS in image caption tag

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> save it. Logout of the user account and login as an
> administrator. Now, simply visit the user profile (of the normal user) and
> the JavaScript will be executed.

> https://github.com/octobercms/october/blob/master/CHANGELOG.md
> *Version affected         :    *Possibly all the builds  i.e ,  < = Build 271

We didn't understand this part. Build 271 is from 2015-06-20. The
vendor made a source-code change related to the bug report today.
There were three builds that occurred after 271, but before today.
We're not sure why "< = Build 271" would be mentioned.

> https://github.com/octobercms/october/issues/1302
> 
> https://github.com/octobercms/october/commit/8a4ac533e5cd6b8f92e9ef19fbfbb2f505dc7a9a

Use CVE-2015-5612 for the issue affecting the caption of a profile
picture. Use CVE-2015-5613 for the other issues fixed in
8a4ac533e5cd6b8f92e9ef19fbfbb2f505dc7a9a. (We haven't yet looked at
whether "caption of a profile picture" is only associated with the
_image_single.htm change.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVr5xoAAoJEKllVAevmvmsA4YH/1r5R42L5CdWzOsQmbtxG+PI
Jci5Rthqr/DGbOJ+chRPTRtD3om2RAHclbYLMmKzrl3craigvyQLGz1ljfuISr5h
qC7fk5/wWm1ANDLxPDA+ZzjKYG0jybbb8d/7DpJnEb2tRePuojHOVoXEwRZaFx+g
hhjVmsH+4ZYkkCxeOeeq694kPqVKGw/W2bdgRJ7k/mEwAb9evUJ8cENlViBjyylb
ivYowIxX8nqOf+XklJAk9rezH8meqwhzNzmP9phiSPEugH4uoxaCo/ASx3Z0Isgl
sZyuPtvZVeSfkXQt3AaN2NFt+Lkiek38qDHekyZWSm0oD1RXX3QNcwa645KczVg=
=LNgC
-----END PGP SIGNATURE-----
