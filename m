X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Monday" "24" "August" "2015" "23:21:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150825032115.659E16FC026@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel" nil nil nil "8" "2015082503:21:15" "[oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel" (number mark "        cve-assign@m Aug 24   42/1697  " thread-indent "\"[oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel\"\n") "<CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>" ("<CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25603 invoked by uid 550); 25 Aug 2015 03:21:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24559 invoked from network); 25 Aug 2015 03:21:27 -0000
In-Reply-To: <CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>
Message-Id: <20150825032115.659E16FC026@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 24 Aug 2015 23:21:15 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel
To: luto@amacapital.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When I fixed Linux's NT flag handling, I added an optimization to
> Linux 3.19 and up. A malicious 32-bit program might be able to leak
> NT into an unrelated task. On a CONFIG_PREEMPT=y kernel, this is a
> straightforward DoS. On a CONFIG_PREEMPT=n kernel, it's probably
> still exploitable for DoS with some more care.
> 
> I believe that this could be used for privilege escalation, too, but
> it won't be easy.
> 
> The fix is just to revert the optimization:
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=512255a2ad2c832ca7d4de9f31245f73781922d0
> 
> Mitigation: CONFIG_IA32_EMULATION=n

Use CVE-2015-6666.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV290aAAoJEL54rhJi8gl51BEP/3YJaklikoui7IEnP++vCiyw
ZKapRPky4Gp2aDs0aecdsgkq+n18zq2NjfsECw5I3hvf9Anmg264pwbvrckmpITu
6Zm3V9yvO4DeJdMCDAk9W7YZzXmW1H18cXCa8DkG4Fr53h4ZZ1tUCsunXXZ82VHT
mlLiJtMlPazjaGinVLK9maMrYkmubOMOnq4sCpbGbHplo9SVfapg0BCZ5mPJyjPQ
f12Z2HRu8Gz3axij27+2vm0YA153JzELrJJ7O50Pu64cfFliXBhy0HN89OvML69h
qkR4QDvFlMmnKJIUSuiYA5exsUMUIQiCfu+ID0ho6v+HbsKNhhdS8VaFtI7LVIKJ
qOYG+EcaotiYz/2KnXuIKhxuLkU+jy42omhfLtWzf1N3GY1+L8I4yaSgmI0fAZag
k+oLWRLujAxiy58KbSfOZcpPj1IHtPXkgNBlGUWepAx8we49RvsWBNYVRTEOW+5l
3JAXBUUhueMc6+j69QjOJLmCLUKRZyRKDcxBUh8ZuiSkw+wPbOipQZMMLHpxuUAf
yGJIKArqG5pBajdzS29KjFL9mDwAs84rIR2PIlEF791k2a/5ZwN/xJr0v76cLnRI
Cjzd6re9ta70IhxMNlRhSCRepIRv5I5Ik3uHFj15bPdIul+3m01v7uZL2krGEQAl
HY2AwGUOLrm8lo8eAISC
=AgVe
-----END PGP SIGNATURE-----
