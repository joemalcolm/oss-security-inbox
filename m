X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1435" "Thursday" "4" "February" "2016" "16:16:31" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160204211631.71FEE6FC0E9@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability" nil nil nil "2" "2016020421:16:31" "[oss-security] Re: CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability" (number mark "U       cve-assign@m Feb  4   38/1435  " thread-indent "\"[oss-security] Re: CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability\"\n") "<20160204163318.GA10260@eldamar.local>" ("<20160204163318.GA10260@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15900 invoked by uid 550); 4 Feb 2016 21:16:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15882 invoked from network); 4 Feb 2016 21:16:43 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160204163318.GA10260@eldamar.local>
Message-Id: <20160204211631.71FEE6FC0E9@smtpvmsrv1.mitre.org>
Date: Thu,  4 Feb 2016 16:16:31 -0500 (EST)
Subject: [oss-security] Re: CVE Request: WordPress: New 4.4.2 security and maintenance release: SSRF and open redirect vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://wordpress.org/news/2016/02/wordpress-4-4-2-security-and-maintenance-release/
> https://core.trac.wordpress.org/changeset/36444
> an open redirection attack

Use CVE-2016-2221.


> https://wordpress.org/news/2016/02/wordpress-4-4-2-security-and-maintenance-release/
> https://core.trac.wordpress.org/changeset/36435
> a possible SSRF for certain local URIs

Use CVE-2016-2222.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWs761AAoJEL54rhJi8gl5+a8P/2r4EIHLn4GLBvy0o8J0Q9LF
tz7lvj9j2naZt0eArwCW2wj0hBaNJWfxfN8Hww/RX6AVKsp6YlUw0PfQKH3smDiF
oG1wyYLvhbn2FmISpuvLfNdki+i9DSv3ZuYi5x2eS39ZeC4WzDZYSEmTRfJF1rP9
D5kcN4nxFZsroswPQCDy/GVHCs8+ONUAUFflLPcgiQtWbuB2BBnfBuBy2MFKwiaw
405spJhDn6ol5F8Y0BQLbZUIlbFMhJxuuiZae2CviNgO1gTEvAJqBCT6g9HaUaW+
R/XQsGBX2TZC+RZBvhNdBvMdv7iv/imahfObfaGgadmdgRCwq4vegDqqk8pIfNS1
B4O0Oh2ClL2mg8zAVVPm4z+StG3OjA5IRixBeJje27iPFp2qFNO0DANr42xkANJd
WReaqq++uwKwEI4Gkp9o0uJTMhFzPcotu8p4fxBikqp0M6KnaM5O667G2l+oz6E7
kHejuDazRW90RMEtmSlejyNcJLeNXoWMjugGYsJtD89izHODCAgZtIZl0BGfOsbk
MiEFSaGWqIBPkv2FRx6bowLoEkFnIXaurCXT+x2+3GPpcITFXNDQa0gb/hQHSwQ7
iufOeraxVFl/bMZmeioZXrhgynWA0kPxWSl5Hd5Yb2P+GpqkC92CTiqo6aKWXZnC
Hsh1G31WLW/lrVfH1yFc
=18yk
-----END PGP SIGNATURE-----
