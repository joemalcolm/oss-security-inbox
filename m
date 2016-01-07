X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1664" "Thursday" "7" "January" "2016" "13:23:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160107182324.DD9B272E06A@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE request for radicale" nil nil nil "1" "2016010718:23:24" "[oss-security] Re: CVE request for radicale" (number mark "U       cve-assign@m Jan  7   45/1664  " thread-indent "\"[oss-security] Re: CVE request for radicale\"\n") "<1452088437.1365.2@smtp.gmail.com>" ("<1452088437.1365.2@smtp.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17546 invoked by uid 550); 7 Jan 2016 18:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17526 invoked from network); 7 Jan 2016 18:23:36 -0000
From: cve-assign@mitre.org
To: guillaume.ayoub@kozea.fr
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1452088437.1365.2@smtp.gmail.com>
Message-Id: <20160107182324.DD9B272E06A@smtpvbsrv1.mitre.org>
Date: Thu,  7 Jan 2016 13:23:24 -0500 (EST)
Subject: [oss-security] Re: CVE request for radicale

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> here are for me the 3 real independent vulnerabilities
> reported and fixed in 1.1:

OK, we will keep the two CVE IDs already assigned in

  http://www.openwall.com/lists/oss-security/2016/01/06/4

and add one more CVE ID for the third issue.


> 3. "On MS Windows the filesystem backend allows access to the first
> level of files on a drive."
> 
> The filesystem backend is the default storage backend. When used, it 
> converts paths like /c:/filename/dummy to c:\filename, and allowing 
> anybody to read/write anything anywhere, by sending requests with 
> particular paths and contents.

Use CVE-2016-1505.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWjqzGAAoJEL54rhJi8gl5ls8P/3X6IIeZYgpQ9bwDGeVTdPiu
qkeJl0cLsikGu2+uyfSTVA5s869DUXERPHLAAVq96LJBm6uWK/w22Z+3D8QPZBqF
IjfR5uMe6HMizpBEiJb2MXWBS1kcjKBOU7kJKBHbToYnJCzhX8WIPW7EG69W/d+/
K4ILFTTXwO/bZunY4wdIM08mE+LQZZEvdGTLm8roIGoorl/qC/ox0ZSWx+mmkf2p
PY/KPSnIPG/4gfF+50lCtluV73fI0i1m9si6IBSlwaWA9Bij1tBrtmj+TnBCKu5n
KW8nRQYwGK6WKh9xZ87fxavRh7jnrwWUYNGpK/NC11DANGa9PLkz4w/oufEm3G00
4Zxd7orjvO81bD3UHiv8hYPEAHtkqBxyoDItctR+yZ0owFDd/EbrIie9yPGheeW8
EgosX7xs5nQ/YNIip2FdGZvS+kjhMvf0O/teO6exdMGlPv1UnFwCl67XyRbp8qt3
+8kaEzAgib84Jg/jEvE353MJ+kHS0FJaA6GI282lRC13OZfLVqi621KXr7xVqstD
WCb0wOza2tCsmcE3nvMqmqKpIrWk+O5MPtcq5yXmpQV/LonJIqF5gQUcrW0iKEdM
LFrSp20MgnrX31nRSlSvNiTijcZBCPqgi+yBhuFLbtYs95YAlLhXen7oB53NF8zn
YEwGYy/Oa476zqRq3/FP
=SRvk
-----END PGP SIGNATURE-----
