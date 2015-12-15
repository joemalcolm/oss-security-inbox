X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1837" "Tuesday" "15" "December" "2015" "13:15:07" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151215181507.A136936E040@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname" "^Cc:" nil nil "12" "2015121518:15:07" "[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname" (number mark "        cve-assign@m Dec 15   40/1837  " thread-indent "\"[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname\"\n") "<20151215143002.GM11263@suse.de>" ("<20151215143002.GM11263@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29727 invoked by uid 550); 15 Dec 2015 18:15:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29707 invoked from network); 15 Dec 2015 18:15:19 -0000
In-Reply-To: <20151215143002.GM11263@suse.de>
Message-Id: <20151215181507.A136936E040@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 15 Dec 2015 13:15:07 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://twitter.com/grsecurity/statuses/676744240802750464
> https://lkml.org/lkml/2015/12/14/252
> http://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=09ccfd238e5a0e670d8178cf50180ea81ae09ae1

(not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/ppp/pptp.c)

> getsockname() for some socket families did not check the length of the passed sockaddr,
> copying out more kernel memory than required, leaking information from the kernel stack,
> including kernel addresses. This can be used for KASLR bypass or other information leaks.

Use CVE-2015-8569 for both the pptp_bind issue and the pptp_connect
issue. (We don't know whether the pptp_connect issue would've been
exploitable if only the pptp_bind issue were fixed.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWcFbvAAoJEL54rhJi8gl5ipsQALG7+8zUMjL85EDHbBd6N5CC
sLcprIeZvir4u9alc/ElVojU3QYChlJumkHRB0BAxhVmUkrGbn6P0BEilbEff5vm
L5VHhBkFhNSxcJtx1cehUOQOuxyQ0phiol5JojOjXAhXwTZbhMyVCuiw7qdP3OJj
ltdLTon3a0Ctt5MPZSGCHJzDCCheUd9cVdpbzM1ynPIZPiRookaSt34SRDit8ADg
9pybsyev7KV0eanVPB1iaxej5HEu4B2KUYwzA/5Y2g1Qx51R9GpwcPqw7OKXjoMe
gu0JKbHmbVxj3oHl+GcMZaNEhsO5lRJ5qJ5ulq+MtAQ2rFpAaYlP/uFmm0A3J6Gz
r0BqKs4R2zc1fo4/aB5ieTKBeVHjj5xIXyGOhjHqyBkpVKwS7dOAoDq9jT6f6an4
Ibavbs0vk4imUOg6dfU3tvstvN++j2iEgK7OPuI68YQvu47PiaEYGm+uuZeFtASs
ZDWekpHPfHAsrUADaSx6aO8s7k1/fSzKSf+KnI3Sf9DPjiCA7mMEM5xo/epiEqZk
nMlwju5T2iChN7/q61LLnJPoilfdkpwruayM0xNs/SVmfkvKXmQt6R7ykfhLe1eu
Byg1HcyTZV5jiQOqUI2nWTuTiqTDRUKS0qjHmO7bfnA/7lzId8ilCZfyt6IwciV4
YccJUdQEqfUy1+I5unzr
=bV38
-----END PGP SIGNATURE-----
