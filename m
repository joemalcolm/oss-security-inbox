X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1070" "Monday" "23" "March" "2015" "17:35:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150323213519.DD9E352E068@smtpvbsrv1.mitre.org>" "27" "[oss-security] Re: CVE Request: Linux kernel: sys_sendto/sys_recvfrom does not validate the user provided ubuf pointer" nil nil nil "3" "2015032321:35:19" "[oss-security] Re: CVE Request: Linux kernel: sys_sendto/sys_recvfrom does not validate the user provided ubuf pointer" (number mark "        cve-assign@m Mar 23   27/1070  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel: sys_sendto/sys_recvfrom does not validate the user provided ubuf pointer\"\n") "<20150323172534.GH15316@dhcp-25-225.brq.redhat.com>" ("<20150323172534.GH15316@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5418 invoked by uid 550); 23 Mar 2015 21:35:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5400 invoked from network); 23 Mar 2015 21:35:31 -0000
In-Reply-To: <20150323172534.GH15316@dhcp-25-225.brq.redhat.com>
Message-Id: <20150323213519.DD9E352E068@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 23 Mar 2015 17:35:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel: sys_sendto/sys_recvfrom does not validate the user provided ubuf pointer
To: pmatouse@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=4de930efc23b92ddf88ce91c405ee645fe6e27ea
> https://twitter.com/grsecurity/status/579050211605102592
> https://twitter.com/grsecurity/status/579075689439059968
> https://twitter.com/grsecurity/status/579060953477701632
> http://grsecurity.net/~spender/viro.txt

Use CVE-2015-2686.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVEIavAAoJEKllVAevmvmsH1IIAIhjVDsVieka5DiAfpKuOi8m
aXqH1baITFNLRws6oqWnA8pTVWUClnYxWTK3Ygd1OFNmJIn0JDbDXkhC1RA0u7xl
3KKI7Hz2ZHvwlgSCFsXu7LiygBdyzL+YFtelNLx/tY9wDRr9g3XtahoFbzFZpzRi
PpfkFaLdP8HFL1E5QsJ2O5jxKXzgHQG6ikTVc3+SREVnpLOnPfF4CJufhDyZiufJ
4wdzze4aIDkV1j5QnUpspt9IHFbkoOMQKxHU0p593c5XV8Qu2nkk/d6dA++qIvWv
FqiihJcfGfFV+GM7/EgM8y785HS4gHzmbpSB9xJ8f6XzZAi7r1n89WhO7TqIBek=
=hB4D
-----END PGP SIGNATURE-----
