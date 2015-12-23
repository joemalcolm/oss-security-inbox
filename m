X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1816" "Wednesday" "23" "December" "2015" "16:46:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151223214603.D60E56C04DB@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE request -- linux kernel: overlay: fix permission checking for setattr" "^Cc:" nil nil "12" "2015122321:46:03" "[oss-security] Re: CVE request -- linux kernel: overlay: fix permission checking for setattr" (number mark "        cve-assign@m Dec 23   43/1816  " thread-indent "\"[oss-security] Re: CVE request -- linux kernel: overlay: fix permission checking for setattr\"\n") "<996765221.2010506.1450889714081.JavaMail.zimbra@redhat.com>" ("<996765221.2010506.1450889714081.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9529 invoked by uid 550); 23 Dec 2015 21:46:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9508 invoked from network); 23 Dec 2015 21:46:16 -0000
In-Reply-To: <996765221.2010506.1450889714081.JavaMail.zimbra@redhat.com>
Message-Id: <20151223214603.D60E56C04DB@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 23 Dec 2015 16:46:03 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- linux kernel: overlay: fix permission checking for setattr
To: vdronov@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A flaw was found in the overlay filesystem of the Linux kernel which allows
> an unprivileged user to change attributes of the files in the overlay,
> particularly allowing access to root-only-accessible files like '/etc/shadow'.

> https://bugzilla.redhat.com/show_bug.cgi?id=1291329

>> A security issue was fixed in kernel 4.4-rc4 resolving the bypassing
>> of filesystem permission checks in overlayfs during the initial
>> copy_up.

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=acff81ec2c79492b180fade3c2894425cd35a545

>> Having these two ->setattr() (one to set verbatim copy of metadata,
>> another to do what overlayfs ->setattr() had been asked to do in the
>> first place) combined is where it breaks.

Use CVE-2015-8660.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWexUMAAoJEL54rhJi8gl5IEsQAMv5QaeC971YMHtFge/V5U+A
8YW0e6efEGffyK8VMPAxDsaXmaCfzw/tSPQvyERnU1dpBaleYq9XxBQ5nmDlOjV0
0StYAYlWt+WWuKxbcGM0YeQA6oNTnA0repZ/BRztGGYsXmshi/4X/UKSCyM08Ii7
vh/kWCfA9B3XpCyAB/Iqk3WUHJSULP0hJTvRXA31857+GNav/F4SwkyHRqoQR2G7
5A4MkGK8OPpRjarCyFRqkSogQc3b3lOkxwoBHFSzOREL2r67xDVPdD3ZDWU0MLSs
5V+qV+YmQvPOHNGVa3LuKHEmkgY0eLsSivEatgEb8JHjBLPD2+d+PRVg9fltC+Vi
/hlXWAIjIYhaKK8D/dt8wEJjosdSA4rcS2VrCX3XYQgd5GBqYWQWftoT5dBTPnDk
1XZrkwo2cJSt/55GwGgBLuN/NF1G/nfEesqIHRg1u4rl3+Zg/SfWhtBE6qGG5BOI
ei1c1GHi2HuqiAMzonFpkANNMEYwOTajfHfwI2ueMCWZ6L7kX279ZJYj1y1E0l5t
vtcVb30TvCzkfaul1UmfomYpR38eVAvhX6XT4xziGPTzgWcdO4EYvxVPyLYYo3FE
lE8iPTiVtkAyjb+jEN2hW9nRQ5bjTgbQ9tSXWCjqdxkcLCY3gmQ0BvaG7r20HkoM
qX0+9OIXeKUYum3VRc1l
=OtE0
-----END PGP SIGNATURE-----
