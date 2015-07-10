X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1163" "Friday" "10" "July" "2015" "16:34:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150710203449.0DD867BC176@smtpvmsrv1.mitre.org>" "31" "[oss-security] Re: Follow up: PowerDNS Security Advisory 2015-01" nil nil nil "7" "2015071020:34:49" "[oss-security] Re: Follow up: PowerDNS Security Advisory 2015-01" (number mark "        cve-assign@m Jul 10   31/1163  " thread-indent "\"[oss-security] Re: Follow up: PowerDNS Security Advisory 2015-01\"\n") "<559B9BD0.1080409@powerdns.com>" ("<559B9BD0.1080409@powerdns.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9727 invoked by uid 550); 10 Jul 2015 20:35:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9504 invoked from network); 10 Jul 2015 20:34:59 -0000
In-Reply-To: <559B9BD0.1080409@powerdns.com>
Message-Id: <20150710203449.0DD867BC176@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 10 Jul 2015 16:34:49 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Follow up: PowerDNS Security Advisory 2015-01
To: pieter.lexis@powerdns.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://doc.powerdns.com/md/security/powerdns-advisory-2015-01/
> Update 7th of July 2015: Toshifumi Sakaguchi discovered that the original fix was insufficient

For cases of an insufficient fix, an additional CVE ID is assigned.
Use CVE-2015-5470. The reason for this CVE is apparently the absence
of:

   if (ret.length() > 1024)
     throw MOADNSException("Total name too long");

in PowerDNS Recursor 3.6.3 and 3.7.2 and Auth 3.3.2 and 3.4.4.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVoCm+AAoJEKllVAevmvmsCd0IAIYvsrFye9E332uBKjKKzo+V
y2KfAeiN0qxnTL31MdYavs8ruWNkzQFgBSPKbhqYYPGKU661SMr+hDy2mVSicysY
MywUEOamB4/9/vA11QV0P+KNhtUmwUJwL7FslAGveSZm+3OF9qxQPtIzNQQdh6J7
YzEW1Xk5UxmjCJmWyzasFf39jAUax/RngvKtHYrUjGkNKZXWabCFqiZ5tO90ga+7
sRhN1HSNSbxB2KMIFCqTMxe78xGV/8J7ifTihQBZe7gx2GbcoBLCf0v+N4mFTl6U
Ziio5mchYZU5HLtdqwMxRg5/vDoxbGT7C1Nqg8rUZAgmFERzwrYzdax8HP/hzhk=
=ONFs
-----END PGP SIGNATURE-----
