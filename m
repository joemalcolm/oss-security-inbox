X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1423" "Saturday" "18" "April" "2015" "00:09:28" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150418040928.240A273C020@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: TCP Fast Open local DoS in some Linux stable branches - Linux kernel" nil nil nil "4" "2015041804:09:28" "[oss-security] Re: TCP Fast Open local DoS in some Linux stable branches - Linux kernel" (number mark "        cve-assign@m Apr 18   40/1423  " thread-indent "\"[oss-security] Re: TCP Fast Open local DoS in some Linux stable branches - Linux kernel\"\n") "<1429043059.3211.58.camel@decadent.org.uk>" ("<1429043059.3211.58.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3792 invoked by uid 550); 18 Apr 2015 04:09:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3757 invoked from network); 18 Apr 2015 04:09:39 -0000
In-Reply-To: <1429043059.3211.58.camel@decadent.org.uk>
Message-Id: <20150418040928.240A273C020@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, 782515@bugs.debian.org
Date: Sat, 18 Apr 2015 00:09:28 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: TCP Fast Open local DoS in some Linux stable branches - Linux kernel
To: ben@decadent.org.uk

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> There is a local DoS triggered by use of the TCP Fast Open option,
> specific to Linux stable branches, as a result of an incompletely
> backported bug fix:
> 
> https://bugs.debian.org/782515
> http://thread.gmane.org/gmane.linux.network/359588

> The BUG() at the top of
> tcp_transmit_skb() fires as tcp_skb_pcount(skb) == 0.
> 
> tcp_send_syn_data() does:
> 
>         memcpy(syn_data->cb, syn->cb, sizeof(syn->cb));
> 
> Since commit cd7d8498c9a5 ("tcp: change tcp_skb_pcount() location") this
> is sufficient to set the GSO segment count correctly. But in older
> branches (< 3.18) the GSO segment count in skb_shared_info is used and
> is no longer copied by tcp_send_syn_data().

Use CVE-2015-3332.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMdepAAoJEKllVAevmvmsVrkH/iNnxP700a67dCy7XLx2Lbab
BUwWqUMJlupC0QSNW3cHsr4HVi2uHvzGI9vP/B/f6d+XRA8oh5tAanK+51JoPXr8
6YitBjxjC7FR1/yUDMkoDPYvPxIv9WayieY4iAPZsjDsLf3MouIK9Zf0uW2z7+cs
JPRuTVDaQeT58WIin2/ZX/bpQGZgshbGn9jx/8H7AEU/dvkQxb9DyxhCTqXze08I
7vXjd8ZglspFbp6I3el5Z3wdqC1Q+Rrv6VQaZ4xtrSDhOB6o3A/y6aLpZif7HUui
iAsRfnSWkegmutRDR0qgDrFPnA45CJoSWD+J+c2Ium6sR+DDDEq9hQ0YMgoxbAo=
=tWXA
-----END PGP SIGNATURE-----
