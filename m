X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["554" "Monday" "19" "June" "2017" "12:43:40" "-0400" "Jim Jagielski" "jim@apache.org" "<BFFF480A-5C76-47A9-89B0-EFDA2D110D73@apache.org>" "25" "[oss-security] CVE-2017-7659: mod_http2 null pointer dereference " "^Date:" nil nil "6" "2017061916:43:40" "[oss-security] CVE-2017-7659: mod_http2 null pointer dereference" (number mark "U       jim@apache.o Jun 19   25/554   " thread-indent "\"[oss-security] CVE-2017-7659: mod_http2 null pointer dereference \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5647 invoked by uid 550); 19 Jun 2017 16:58:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4064 invoked from network); 19 Jun 2017 16:43:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <BFFF480A-5C76-47A9-89B0-EFDA2D110D73@apache.org>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfMGKNKOEohnSYOdQdh6j5BYDiJMtbh6O8eyZhIAuOJgOLoUKP66rjpkfBSncxyXYvkEHO/NiFuEcOR+Ry71YQNe8LG3Kc4fVenIYS9b2VL7WoqdQX47N
 T1aWCK+PD9I94Ay0hGv0zSv3K8Q86mPWskMAvHWGDSh6aSwRmq18FMHzkKb3VaY3EigIwium38Ibfg==
Date: Mon, 19 Jun 2017 12:43:40 -0400
From: Jim Jagielski <jim@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7659: mod_http2 null pointer dereference 
To: oss-security@lists.openwall.com

CVE-2017-7659: mod_http2 null pointer dereference=20

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.24 (unreleased)
httpd 2.4.25

Description:
A maliciously constructed HTTP/2 request could cause mod_http2 to
dereference a NULL pointer and crash the server process.

Mitigation:
2.4.25 users of mod_http2 should upgrade to 2.4.26.

Credit:
The Apache HTTP Server security team would like to thank Robert =C5=9Awi=C4=
=99cki
for reporting this issue.

References:
https://httpd.apache.org/security_report.html

