X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1346" "Wednesday" "16" "December" "2015" "10:30:19" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151216153019.0E37272E018@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname" "^Cc:" nil nil "12" "2015121615:30:19" "[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname" (number mark "        cve-assign@m Dec 16   34/1346  " thread-indent "\"[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname\"\n") "<20151216114430.GH19953@suse.de>" ("<20151216114430.GH19953@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24246 invoked by uid 550); 16 Dec 2015 15:30:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24228 invoked from network); 16 Dec 2015 15:30:30 -0000
In-Reply-To: <20151216114430.GH19953@suse.de>
Message-Id: <20151216153019.0E37272E018@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 16 Dec 2015 10:30:19 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Could we merge them with this CVE?
> 
> http://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=5233252fce714053f0151680933571a2da9cbfb4
> 
> in bluetooth/sco

No, we assign a new ID for a similar issue that is separately discovered.
Use CVE-2015-8575 for this sco_sock_bind issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWcYM3AAoJEL54rhJi8gl5b0MP/iNeJVjRm3mO+t1zcZMLJUQr
sRf3XySNu8vBcfK59FgmHJ2PVOSscPuS557qHvJMAOVQ6smmF/9jl58uRbyl4WYh
41wHTsQJBlyuRiSfzy2fowdoTPGKMqJyRatsvXbaJk3TB86lOK58tDOCcgqMYk0i
mhW7YXAcpS4Kt3bpuwCBHKFUKHDUHPYDtR3QFZeERYYusWL8nwfnrd0LBBw2qAg5
xCDT8s+DCxXTeE4Wr8zGMq8+QHI9yUf/jveqo8xCu7ur0TEqM98nKZ6mX2rtoVGt
DvoFX3G4DOz4++ForUQgcLefyLW/T1f9zwj0OrHXzLeTeAyZpwFS2fQ9pZCG8frR
1qJPvIjWzGcu8ojR5whSNbQdKwDdaz0gaBBEvPvL083t5TGQxgseTlZHvcfVdxWD
x4KGNG8GtUgwJ7HXvWGejOPEkgAcxblnzSTOZsmi35AIze5whfWDGnl1a6EGelgt
LPn5d3XGjZC7smLUxVrai0ENHhBuaG1KHRuTbaS+NR1YcE56Bg7ikMvWt7Twgyqz
LeuGoNwQqwuSs38+CSI3pmpFVph2AN7z6gxWug7sN4nuQzhV9s9nJat4TSsQt7lp
RN4kTepa6vcxPVPBa0khOpAOWtfBUhPwbuXB+TTQjWslf54e+fNlIErZGLDf/F6r
cLpJcVHqqM6Jm20eusPc
=akG6
-----END PGP SIGNATURE-----
