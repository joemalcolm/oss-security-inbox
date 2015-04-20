X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1194" "Monday" "20" "April" "2015" "12:22:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150420162248.9249E3321E6@smtpvbsrv1.mitre.org>" "31" "[oss-security] Re: Linux: chown() was racy relative to execve() - Linux kernel" nil nil nil "4" "2015042016:22:48" "[oss-security] Re: Linux: chown() was racy relative to execve() - Linux kernel" (number mark "        cve-assign@m Apr 20   31/1194  " thread-indent "\"[oss-security] Re: Linux: chown() was racy relative to execve() - Linux kernel\"\n") "<20150420003456.GA16052@pc.thejh.net>" ("<20150420003456.GA16052@pc.thejh.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26110 invoked by uid 550); 20 Apr 2015 16:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26048 invoked from network); 20 Apr 2015 16:23:00 -0000
In-Reply-To: <20150420003456.GA16052@pc.thejh.net>
Message-Id: <20150420162248.9249E3321E6@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 20 Apr 2015 12:22:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux: chown() was racy relative to execve() - Linux kernel
To: jann@thejh.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=8b01fc86b9f425899f8a3a8fc1c47d73c2c20543

Use CVE-2015-3339.


> Two programs for which this could be relevant are procmail and vsftpd.

If the procmail vendor or the vsftpd vendor decides to announce a
required security update to make their product safe on affected Linux
versions (i.e., possibly some type of workaround in their code), then
that vendor should have its own CVE ID for its own product.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVNScmAAoJEKllVAevmvmsqekIAJ7/XIgShCbUKsG6+NnmoQAh
b+EW9BhPxjoqhgHHr2ItFgXY9Dfh1qWUlorpM9EPNdphuMVsUZWs/nwGNvNvLFfy
rPlHt1v2lmg+pKNnqrC4QcfLfRYa2iAVFqk9GO81PW4Jq4GCkKYnL08oOXaW1pSa
Hu9GYu56jp8GQinKbn3vX+MYmwwUy1gsSbB3AN2jM6QbGBldcctZFKzcfy5rJ3Cj
2ukvi3j15fZr8JTMoPtc8IocGZmGG/FuDNzo6sQp9ZFV9vyCnGpuRUVXECOCDk++
rD/Y+VQD3YBvrwLOFdqE9ILVCc6HZJUghoj7THW7T//Ugzk8N68jCwxPdcgZ6+g=
=7cGX
-----END PGP SIGNATURE-----
