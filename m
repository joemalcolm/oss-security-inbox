X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Sunday" "10" "January" "2016" "12:43:58" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160110174358.54BB66C000F@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter" nil nil nil "1" "2016011017:43:58" "[oss-security] Re: CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter" (number mark "U       cve-assign@m Jan 10   43/1659  " thread-indent "\"[oss-security] Re: CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter\"\n") "<20160110143712.GA13963@eldamar.local>" ("<20160110143712.GA13963@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21638 invoked by uid 550); 10 Jan 2016 17:44:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21617 invoked from network); 10 Jan 2016 17:44:10 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, dmn@debian.org
In-Reply-To: <20160110143712.GA13963@eldamar.local>
Message-Id: <20160110174358.54BB66C000F@smtpvmsrv1.mitre.org>
Date: Sun, 10 Jan 2016 12:43:58 -0500 (EST)
Subject: [oss-security] Re: CVE Request: FireBird RDBMS: authenticated clients crash FireBird when running gbak with invalid parameter

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The FireBird RDBMS can be crashed remotely by an authenticated client
> by invoking gbak via the service manager using invalid command line
> switch and lead to denial of service.
> 
> http://tracker.firebirdsql.org/browse/CORE-5068
> http://sourceforge.net/p/firebird/code/62783/
> https://bugs.debian.org/810599

>> Typo in gbak's command line parameter causes Firebird process to crash

>> Bug happens only when backup\restore is made using services and when wrong switch is passed. 

>>> burp/burp.cpp
>>> - BURP_print(true, 137, sw.c_str());
>>> + BURP_error(137, true, sw.c_str());

Use CVE-2016-1569.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWkpewAAoJEL54rhJi8gl5JdUP/1Nf5ObCY4KGqcm2AAHx43a0
8f9TWuE/FVfNNVVsfAHqLRacUte+KHvVCY7+UUiIYsXRymoJeKc+JqaqgDIhBW0L
0/5FUiDt8YG4eGFLm3jDlfOz8em9Mk2lvOnFxh98rDwjn7HTh/B8rutnbIUeNE8X
W5pKo/GzO3N68UcSZrJnzy6oPvO2aoWbt1fXiJEnvh9Ff2NEaPkFG4yE3fvPDmLO
cR6O3ZCVJNhRJMEbayIqwpeTF6susR7BjRQBSB5XXR4weN9ulIXmKb29pJz9Ioqx
WxrDPvD3Z4LaEMdFRkylEo4lTEiAJQVlSt316xFoqVmh7kPri7DdzJmU7920i7YH
Gh8lOXO4yzW30ek3jRRs5FBbyrEUPjqwRP2ejnJ7fwB4jQwauSU98yt0MpEztOHr
I59XcF0TpyEHe3fK8CLdeRMVVBveJKmsbmIUzzA37jLoYoZim1VuQB3CbSQPE7k5
RBOGUWTa/npMrWkANojT5DTmfGb/oFfsculXDDc1svILWy+CQxxK8/qg4w8Gm+al
XccUo7ZVV2JeNKX8F7Chmw6jPhWSpJgrl1i7HoXA/DRKUMnM+R13gXbcX/yR+dyO
VWViItsI/eY/d7LRJ5vP8OHNJuYYxYmTF6dlXWXjemUMs9/m42qBaIzI+hGD9c8d
iXS62wvm5sQXtNWmIm4P
=tXFp
-----END PGP SIGNATURE-----
