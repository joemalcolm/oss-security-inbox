X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1413" "Saturday" "22" "October" "2016" "21:05:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161023010529.DB3343AE00F@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)" nil nil nil "10" "2016102301:05:29" "[oss-security] Re: jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)" (number mark "U       cve-assign@m Oct 22   34/1413  " thread-indent "\"[oss-security] Re: jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)\"\n") "<2700333.W9CT5MSJyE@blackgate>" ("<2700333.W9CT5MSJyE@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3736 invoked by uid 550); 23 Oct 2016 01:05:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3532 invoked from network); 23 Oct 2016 01:05:41 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2700333.W9CT5MSJyE@blackgate>
Message-Id: <20161023010529.DB3343AE00F@smtpvbsrv1.mitre.org>
Date: Sat, 22 Oct 2016 21:05:29 -0400 (EDT)
Subject: [oss-security] Re: jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/18/jasper-null-pointer-dereference-in-jp2_colr_destroy-jp2_cod-c
> 
> AddressSanitizer: SEGV on unknown address 0x000000000000
> 0x7f8dcb5bc940 in jp2_colr_destroy ... jasper-1.900.5/src/libjasper/jp2/jp2_cod.c:443:3
> 
> https://github.com/mdadams/jasper/commit/e24bdc716c3327b067c551bc6cfb97fd2370358d

Use CVE-2016-8887.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDAr/AAoJEHb/MwWLVhi24I8QAKtduMTN4eo5SAOfpBYIgLdr
9K4Vlzy3AB73c1TA/d/ck8EiG8WeDeHdU4XgZqpG7ZcEl3Yg8Tu1OZI/eNNS4pFs
z2+TDEzRP71cy7yuX+LwjWFzu5jYDVZl4UYjLS004k5jQ4xvwZ8iuUCP6OmU1lfe
kyaHWsvX5+uGohyz+Wd71pK8/OJockZmsSRDqaFj0ZN2luYB4daOnkUURiQ+b3Km
9m6KfDIDw+x2sS9Ts+YFCU0LY/7Em68hh7qabACjXQql1xuwaGoZsw+30HItKfLo
h41JMuPrEf1LyhJBZrg0URp/+f+Nlq/n3aqwrxRm/iARWw3XsNqrCBPa5QhBCO6e
lWAGB3S8VnfXeFxsirFCy3yacIF0/sUfc3sYNdqOVOKkDPI3vg6bmwgnVefoD3+J
4UY3KZOrGp54Y6vTGGiFBb4JMqRy6TijxoGWUhqRBZH5w9p0mbrcK3bC9iCOYndk
ZCOeC1z+sfXYWSAdsqxInOJlT5WCVBK21qOfIbfcEfJIbaAWQbSZSTQ7OpIM/1K9
IUuZqNWJNAEDXZi1BsxEr34lGFacIpXsCCiVBKBFrON7GKZPwikTrj13R8N1pCtJ
FAFqIZflZDcpOoB80DgYgEZMhMV6QqaKkp6WgdwoTI1XXzrtPCFgfOU++JWmn9p+
oFzCFvJnQ9yyHGdSThSf
=eoij
-----END PGP SIGNATURE-----
