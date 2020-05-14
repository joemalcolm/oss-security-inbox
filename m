X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["599" "Thursday" "14" "May" "2020" "07:25:05" "+0200" "Jean-Baptiste Onofre" "jb@nanthrax.net" "<DC7932BA-215B-48C8-844E-5EFC06EE609C@nanthrax.net>" "29" "[oss-security] [CVE-2020-1941] XSS in ActiveMQ WebConsole" nil nil nil "5" "2020051405:25:05" "[oss-security] [CVE-2020-1941] XSS in ActiveMQ WebConsole" (number mark "U       jb@nanthrax. May 14   29/599   " thread-indent "\"[oss-security] [CVE-2020-1941] XSS in ActiveMQ WebConsole\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1941] XSS in ActiveMQ WebConsole" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11588 invoked by uid 550); 14 May 2020 05:26:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9622 invoked from network); 14 May 2020 05:24:20 -0000
X-Originating-IP: 78.218.26.15
From: Jean-Baptiste Onofre <jb@nanthrax.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_36AF9F4C-542F-4B8E-86F0-15B2BB47FF52"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <DC7932BA-215B-48C8-844E-5EFC06EE609C@nanthrax.net>
Date: Thu, 14 May 2020 07:25:05 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: [oss-security] [CVE-2020-1941] XSS in ActiveMQ WebConsole

--Apple-Mail=_36AF9F4C-542F-4B8E-86F0-15B2BB47FF52
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

CVE-2020-1941 - XSS in WebConsole

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache ActiveMQ 5.0.0 - 5.15.11

Description:
The webconsole admin GUI is open to XSS, in the view that lists the content=
s of a queue.

Mitigation:
Upgrade to Apache ActiveMQ 5.15.12.=20

Credit:
This issue was discovered by:

* Przemys=C4=B9=E2=80=9Aaw Kowalski <przemyslawk@stmsolutions.pl>


--Apple-Mail=_36AF9F4C-542F-4B8E-86F0-15B2BB47FF52--
