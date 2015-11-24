X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1012" "Tuesday" "24" "November" "2015" "23:09:19" "+0100" "Matthias Geerdsen" "matthias@vorlons.info" "<5654E00F.5050806@vorlons.info>" "29" "[oss-security] CVE request: Redmine - information disclosure on the time logging form" nil nil nil "11" "2015112422:09:19" "[oss-security] CVE request: Redmine - information disclosure on the time logging form" (number mark "U       matthias@vor Nov 24   29/1012  " thread-indent "\"[oss-security] CVE request: Redmine - information disclosure on the time logging form\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15529 invoked by uid 550); 25 Nov 2015 00:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19929 invoked from network); 24 Nov 2015 22:09:33 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1448402960;
	bh=ZHzUAd+CAedhWjKE7VPizq/HqVCNuzUtTiuFM22Rx2o=;
	h=Date:From:To:Subject:From;
	b=TQjlrJ8SFmaKxlK5ceAEpWwStGnEucrDnmD5LH1qKR7jywnxCCCS0fubt9MYVdRLN
	 9J64T0Wz0QdYQ8LhFHCTW3FElFyF2FVjXFjBi8oKKM1yJrdprAoKO0MfdUlkh0QXSr
	 vZLCBvkvohZ0d1bDXmdgxu347HM4Px7qYiGIegLo=
Message-ID: <5654E00F.5050806@vorlons.info>
Date: Tue, 24 Nov 2015 23:09:19 +0100
From: Matthias Geerdsen <matthias@vorlons.info>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: Redmine - information disclosure on the time logging
 form

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please assign a CVE ID for an information disclosure issue in the
latest Redmine releases (2.6.8, 3.0.6 and 3.1.2) [1]. The issue is
listed at [2] and a commit can be found at [3]. A private bug report
appears to exist at [4]

Cheers
Matthias

[1] <http://www.redmine.org/news/102>
[2] <http://www.redmine.org/projects/redmine/wiki/Security_Advisories>
[3]
<https://github.com/redmine/redmine/commit/c096dde88ff02872ba35edc4dc403c80a7867b5c>
[4] <https://www.redmine.org/issues/21150>
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWVOAJAAoJEDVYuxv9Aw7qGhQH/3xLVit66gjxG5pbJee6kykm
Ifzc9U7CKSmdMPT6Mv6DOYBLB0FnEHQS7Zybp0qU06b202Et9cnLm4tsibUBCZ3t
aCnoIMamd9O2ED3pHdVp8KbVgRftHzZeeKWsofE5dfQrKFyLSYmUOjEjySxmjwpH
OokliyvVl1xOqw9CF/mYv0gxROvJBG+/3jEeI6ACANRiVfAlV0lEBak1nBk3Ri+w
ihlfAbCMKVzOTL5OYgT4GYLMT8Lp2vXdp/S3WoeUMHhUd5yKQ0J4/Z+IevhW+I25
Mo1NcRmYCzBkWLzWFEZUtfUlmyt+mIqnfOts2Qx09OfCzVYO0xae4CFX+C/QgxQ=
=MSUo
-----END PGP SIGNATURE-----
