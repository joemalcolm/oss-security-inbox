X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1998" "Monday" "14" "March" "2016" "00:16:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160314041632.96CC352E004@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption" nil nil nil "3" "2016031404:16:32" "[oss-security] Re: CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption" (number mark "U       cve-assign@m Mar 14   49/1998  " thread-indent "\"[oss-security] Re: CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption\"\n") "<20160310092549.GB4470@suse.de>" ("<20160310092549.GB4470@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22042 invoked by uid 550); 14 Mar 2016 04:16:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22024 invoked from network); 14 Mar 2016 04:16:44 -0000
From: cve-assign@mitre.org
To: meissner@suse.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160310092549.GB4470@suse.de>
Message-Id: <20160314041632.96CC352E004@smtpvbsrv1.mitre.org>
Date: Mon, 14 Mar 2016 00:16:32 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Linux Kernel: Linux netfilter IPT_SO_SET_REPLACE memory corruption

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://code.google.com/p/google-security-research/issues/detail?id=758
> 
> A memory corruption vulnerability exists in the IPT_SO_SET_REPLACE
> ioctl in the netfilter code for iptables support. This ioctl is can be
> triggered by an unprivileged user on PF_INET sockets when unprivileged
> user namespaces are available (CONFIG_USER_NS=y). Android does not
> enable this option, but desktop/server distributions and Chrome OS
> will commonly enable this to allow for containers support or
> sandboxing.
> [ Correction: IPT_SO_SET_REPLACE is reached via setsockopt, not ioctl ]

> one for the issue above,
> which has been proposed to be addressed by
> http://marc.info/?l=netfilter-devel&m=145757134822741&w=2

Use CVE-2016-3134.


> one for the unsigned integer overflow on 32bit kernels
> mentioned as an aside at the end of the original report. Proposed
> fix is http://marc.info/?l=netfilter-devel&m=145757136822750&w=2

Use CVE-2016-3135.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW5jqTAAoJEL54rhJi8gl5l38P/jfH0iB3klwlzPEfSJLcn6eB
v/BrY5uicvrZG05V2tcN003AWTvolbkZsBOlAwRO6jGl/mj20DQfuRsjT6ZfXZ0J
YEYnObv3f0rkH7lewbPg6wcA2Gp2xX6B5ts+IsHOzMcJ+/rD1GtEn1XJoEAtYxSQ
XaSvbgup7Jh6wr5hQnt8z3kqtzjHD57zuwBp3QweJbX4W2wK/Xb2WZNashQSh/As
xYWphcFmhdUJZH0l7fl03ru77On+HmDzWNLKbW+TTQ/M7n0MiPSP+X4k3wjM5jEd
WOxoa1oasQjGpD9RLphVy1/rF03vwyW3i/Wm3d9vmDDB7hrKxyUGO2wL8ngWQSTx
v2VY1/IEwUjigokXvNDPTCqOHz+opSOanZiD1XgBUEyrZdcNTEG2zR9VrxRdlT2C
JImh5ncEaYHxeD+i2q0EajfcJt0YHvS3I2mvhlYk7iKJa/ZTRso4JXPt6HmDMrn8
svXwT3fWKePRL/lIIxdEN4vIOi1L80Np3S4eDHbtHuWUuS2wj6mHIJ92jvcCq8IU
moSoMHskkmAwI2YjUMzD6BD2O2JDATW/E3xQjpWfU+HrhIQQpEKvxBjNw5Pvl6ei
3cHUgehRgfBfFLE9qofuFS5xACMi1XueIs2NQBnf1nn8koEF5PKFusRUxqZjySq1
BmFYYhLN+jgPq2t2nf6D
=iUM4
-----END PGP SIGNATURE-----
