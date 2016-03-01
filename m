X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1501" "Tuesday" "1" "March" "2016" "14:12:35" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030119:12:35" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        cve-assign@m Mar  1   34/1501  " thread-indent "\"[oss-security] Re: CVE's for SSLv2 support\"\n") "<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27716 invoked by uid 550); 1 Mar 2016 19:13:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27683 invoked from network); 1 Mar 2016 19:13:46 -0000
In-Reply-To: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
Message-Id: <20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  1 Mar 2016 14:12:35 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE's for SSLv2 support
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> If a crypto library (e.g. OpenSSL, NSS) supports AND enables SSLv2 by
> default should it receive a CVE?

There's no general answer to that question. CVE ID assignments are not
based on outsiders making guesses about the expectations of a product's
customers. For example, there might be a crypto library intended for
communication on isolated networks to high-value embedded devices that
support only SSLv2, and cannot and will not ever be updated.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW1ekCAAoJEL54rhJi8gl5dQEQAK5x43W8Q157sNT4gUg8rQtS
U0UlnjmsT1S40FlNiwZpK5IPkE7hdeTeiWUoFMsvc13vtlfpwfHCBfb05B5fcQBP
2b3ssj49aH5yXVxnGE2ab6W5c63wN2jkbBBihVBXZ8SB9h4tNNSey+7dJrLyMqi0
Um76Tv5htBbpm+6UtlgN7zV3tT9MIe6bZI/b7xxuf23nM8/mBvc1nX8dpCFF16og
ks9d9A1Rnn79xCvWZ++jR8PRlmFwmLym/PEQulJ6k4WQdOECH78ytYWg9MG7EuIg
6PbKloy7u36+ZgrUXxYnydoH834H6yOQIPro7hARFA0fpkbmydBJKnP4letuVS5w
S89g15c2ymxIyKaKy+qT31LEKBGf+N6vPoPNL/IWeRh+8GmSyWkWF7Rx0CboFCTs
7+Ft9T+0Lfi6bYkYqAFUVe8gBkM84tLR+4HXgkANLAfhLEsKaCYqAkNYlbDvCXtB
RyFZHcVhp8XYWx7b5YN3BBB5VWK/fS8y8ilHaf143Bkbn+Yu6yrFb+DIAYhKPPAI
1CURZksBwzSSjiprsExD4dODDJGzl/0khHdkDkdZp7o9drt3D4VkKGgkBPoG5NFk
cX1XQc6o3Hv72oYFLyatCA5H8k9HZLEUjl8cYuf/QIvfwJwjlLqZ+HrPWvs2SY5C
K4C7mIXfd9Iem6DqXfNK
=ylcp
-----END PGP SIGNATURE-----
