X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1030" "Monday" "17" "August" "2015" "21:14:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150818011441.24C4C72E04B@smtpvbsrv1.mitre.org>" "28" "[oss-security] Re: CVE request: conntrackd denial of service with unusual network traffic" nil nil nil "8" "2015081801:14:41" "[oss-security] Re: CVE request: conntrackd denial of service with unusual network traffic" (number mark "        cve-assign@m Aug 17   28/1030  " thread-indent "\"[oss-security] Re: CVE request: conntrackd denial of service with unusual network traffic\"\n") "<55CE087A.1040706@redhat.com>" ("<55CE087A.1040706@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26418 invoked by uid 550); 18 Aug 2015 01:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26400 invoked from network); 18 Aug 2015 01:14:53 -0000
In-Reply-To: <55CE087A.1040706@redhat.com>
Message-Id: <20150818011441.24C4C72E04B@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 17 Aug 2015 21:14:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: conntrackd denial of service with unusual network traffic
To: fweimer@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugzilla.netfilter.org/show_bug.cgi?id=910
> https://git.netfilter.org/conntrack-tools/commit/?id=c392c159605956c7bd4a264ab4490e2b2704c0cd
> 
> Fix a possible crash if conntrackd sees DCCP, SCTP and ICMPv6 traffic
> and the corresponding kernel modules that track this traffic are not
> available.

Use CVE-2015-6496.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCAAGBQJV0oadAAoJEKllVAevmvmsQgkH/ieW5t3vSrq5+QSEUjze7vc5
NY379H8HaE6DqhSblA98HXNZMan4xP4olqfGEQlnsvKJPqM9HhtNyTPqZJuWgxsj
sYYqHue98tBLsGnr3PucfvwwAq8r04f+YCmH0Sgi1Gt+raFmDHt+LLT7wy1MrrBK
1w4fxJk05cZXeZ+SNTkZ0DtEz3wHbH4d3C5Pu9fkRzHDSQ9QY0dT4u0bVJUnYNnu
hBEgZHVmdHkKJRB5Nwve8ajYdVR9OYtx5a8dLtFsVlqaWbeWN1SYJlUhHYO3jmEH
dMf7qOtJrUWuMEOr2PUCp81rMJSxrvio/fd2M5wbEgJtfD0upldKCxygXKGxMIo=
=iUf7
-----END PGP SIGNATURE-----
