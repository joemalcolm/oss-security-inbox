X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1516" "Saturday" "1" "October" "2016" "16:59:47" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161001205947.0427D34E006@smtpvbsrv1.mitre.org>" "40" "[oss-security] Re: GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow" nil nil nil "10" "2016100120:59:47" "[oss-security] Re: GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow" (number mark "U       cve-assign@m Oct  1   40/1516  " thread-indent "\"[oss-security] Re: GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow\"\n") "<alpine.GSO.2.20.1610011036390.13801@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1610011036390.13801@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5611 invoked by uid 550); 1 Oct 2016 21:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5585 invoked from network); 1 Oct 2016 20:59:59 -0000
From: cve-assign@mitre.org
To: bfriesen@simple.dallas.tx.us
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <alpine.GSO.2.20.1610011036390.13801@freddy.simplesystems.org>
Message-Id: <20161001205947.0427D34E006@smtpvbsrv1.mitre.org>
Date: Sat,  1 Oct 2016 16:59:47 -0400 (EDT)
Subject: [oss-security] Re: GraphicsMagick CVE request: 8BIM/8BIMW unsigned underflow leads to heap overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Today we received a report from Marco Grassi about a heap overflow in
> the 8BIM reader. 8BIM is a metadata chunk often attached to JPEG
> files.
> 
> After investigation it was found that there was a small unsigned
> overflow leading to a huge size value, which then resulted in a heap
> overflow (causing a crash).
> 
> https://sourceforge.net/p/graphicsmagick/code/ci/5c7b6d6094a25e99c57f8b18343914ebfd8213ef/

>> coders/meta.c
>> parse8BIM

Use CVE-2016-7800.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8CLoAAoJEHb/MwWLVhi25tIQAKwOxW+rmQR3/yYEeOUs12z6
dAu3II8DrfdEIetl+Tqtl3p0+qno6pIcU33e1M58u09xzHaeI1bLbHfajWMLHsHS
89z+9p7NVUh9YTEHmVtrFPtCwa8KLkxDG7FrG3tJ0kANFC5qNFqsQrO3V3X2F6CO
Ntj1crMkglIgKdqEyBfHAYVZCz4ViP4khbyIG/jZaD3jDr+tIq0eTT5/Sk3us9dM
WTUdlN2ZBx2dPMtDKDnTI76AlDow4qQdpuwuUatjaE1P3NsUA2IoyE1P31s4Sdid
Vg4D+IarUiubUg7ZyojpAZl1wvz+wXkh4YO7nwOxUsJ6fNcWeYRNtKGScyqyMOC8
6cPXmHkbbe92mtYDf0aEgwCsWaaFtcByPADn1S50dqN9ABwzN7uKgC6dxE+Ca8Et
gv/d/j8uMlZPZsS3Eo3V8U/df7MlTBo/X9Nt5CsNgZvwdcL9j6MN0CBFUXOEAiRZ
IZwPFb+YNzoOmhz9WRHqhJC73pcM3h951fZYipRKq/5FnydhhMaKzzqFZbThE4Gz
jJS96Mm8o9XEAeU9qntREWrshaot070IXUgnINMG56fllJOOwAWbAFyr7ZHWH6Sc
6ZLAzwMqY+uxYQgMAHmhYyFllrg2mUZC+keMM1Pemci1Iny+GiWx6rXtoEPWqdgr
th/lBrPHnXbti+aatzvs
=g+mv
-----END PGP SIGNATURE-----
