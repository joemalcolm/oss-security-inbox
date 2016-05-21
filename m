X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1501" "Saturday" "21" "May" "2016" "09:59:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160521135921.EC33352E01C@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump" nil nil nil "5" "2016052113:59:21" "[oss-security] Re: CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump" (number mark "U       cve-assign@m May 21   35/1501  " thread-indent "\"[oss-security] Re: CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump\"\n") "<a55a2a8b-31c4-d454-376a-fe85302c9b29@gmail.com>" ("<a55a2a8b-31c4-d454-376a-fe85302c9b29@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9664 invoked by uid 550); 21 May 2016 13:59:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9643 invoked from network); 21 May 2016 13:59:34 -0000
From: cve-assign@mitre.org
To: sploving1@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, richard.alpe@ericsson.com
In-Reply-To: <a55a2a8b-31c4-d454-376a-fe85302c9b29@gmail.com>
Message-Id: <20160521135921.EC33352E01C@smtpvbsrv1.mitre.org>
Date: Sat, 21 May 2016 09:59:21 -0400 (EDT)
Subject: [oss-security] Re: CVE request: -- Linux kernel: Null pointer dereference in tipc_nl_publ_dump

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://lists.openwall.net/netdev/2016/05/14/28
> https://github.com/torvalds/linux/commit/45e093ae2830cd1264677d47ff9a95a71f5d9f9c

> Without checking the pointer to the netlink socket attribute, it could
> cause a null pointer dereference when parsing the nested attributes in
> function tipc_nl_publ_dump. It allows local users to cause a denial of
> service. This vulnerability affects Linux kernel versions from 3.19 to 4.6.

Use CVE-2016-4951.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXQGkEAAoJEHb/MwWLVhi21gkP/1eCj9lEnb+LDcZu56yrfV+e
fO9tl7DUcrGlj5SwqiF1x80nAsWiIfdQkG1vKguqMWQYE3o0wT841FcTOltphUnx
tPndKrWCfv8hkJrH+rB01MXM+8jUFe3E6tn7mCdoF5RwYrOR8MnBSFi20/ekc826
qOw4nnFZ8eujJkBAXi58L1nSnE+tTsmtwZoGl+bE0qIR5QV4Hc1Ep26VOrQ2wxKN
bdGz37ZweRcVemb1KdP3kzxZYGCF9x71zeFCMBw/N2I6cHgbtJCmBnAU16hanh1J
fHlHQpt41WZ8MMoD9iBpPve92vE7jZUbZVxV9UHhYtIaJw8q5Rwnn0D1y9ObtevW
QMqqSjKC41gHU63OviYOq/5g2nuRZ435iWw8oqg2/dXInYPXe5drnK5wv5jM+IU8
N1UwSRXSHMaNFwT77mqF6a448M6GPIYBA4jclLAIIrPJqhK4EBZIjXNgzflxoIIA
hXlwhu4GUxuI1usQ2fgsSbOiVCz6KsPiM9098ycZtIl7RNukHZh8itJAjAb2+fFc
Eq0B/1J4l8U6tTXECigNZGQZG0GQxQNHH34RKVEUclfhwAMS74A2puTBREPN1Nkb
1W8ye0M762tL1wa/0RRLml4/Ajm4MTFoBnY2e0HxmmIn3M54fmK6+cSsi2mxdPhW
4hwVUl4K+P/OMujS4KNw
=N8vt
-----END PGP SIGNATURE-----
