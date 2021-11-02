X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Tuesday" "2" "November" "2021" "14:25:48" "-0700" "Bryan Call" "bcall@apache.org" nil "44" "[oss-security] Apache Traffic Server is vulnerable to various smuggle, DOS, and validation attacks" nil nil nil "11" nil nil (number mark "U       bcall@apache Nov  2   44/1465  " thread-indent "\"[oss-security] Apache Traffic Server is vulnerable to various smuggle, DOS, and validation attacks\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Apache Traffic Server is vulnerable to various smuggle, DOS, and validation attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5232 invoked by uid 550); 2 Nov 2021 22:04:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7381 invoked from network); 2 Nov 2021 21:26:55 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Message-Id: <FE20B052-A91A-4772-AEE7-37B56AD91754@apache.org>
Date: Tue, 2 Nov 2021 14:25:48 -0700
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Subject: [oss-security] Apache Traffic Server is vulnerable to various smuggle, DOS, and
 validation attacks

Description:
Apache Traffic Server is vulnerable to various smuggle, DOS, and validation=
 attacks

CVE (8.1.x and 9.1.x):
CVE-2021-37147 Request Smuggling - LF line ending
CVE-2021-37148 Request Smuggling - transfer encoding validation
CVE-2021-37149 Request Smuggling - multiple attacks
CVE-2021-41585 ATS stops accepting connections on FreeBSD
CVE-2021-43082 heap-buffer-overflow with stats-over-http plugin

CVE (8.1.x):
CVE-2021-38161 Not validating origin TLS certificate

Reported By:
Mattias Grenfeldt and Asta Olofsson (CVE-2021-37147, CVE-2021-37148, CVE-20=
21-37149)
Asbjorn Bjornstad (CVE-2021-41585)
Masaori Koshiba (CVE-2021-43082)
Robert Butts (CVE-2021-38161)

Vendor:
The Apache Software Foundation

Version Affected:
ATS 8.0.0 to 8.1.2
ATS 9.0.0 to 9.1.0

Mitigation:
8.x users should upgrade to 8.1.3 or later versions
9.x users should upgrade to 9.1.1 or later versions

References:
  Downloads:
    https://trafficserver.apache.org/downloads
    (Please use backup sites from the link only if the mirrors are unavaila=
ble)=20
  CVE:
    https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-37147
    https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-37148
    https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-37149
    https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-41585
    https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-43082
    https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-38161=
