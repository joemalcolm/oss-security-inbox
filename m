X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5137" "Thursday" "7" "June" "2018" "12:39:48" "+0200" "Secunia Research" "vuln@secunia.com" "<000001d3fe4b$dbee82c0$93cb8840$@secunia.com>" "128" "[oss-security] Secunia Research: Linux Kernel USB over IP Multiple Denial of Service Vulnerabilities" nil nil nil "6" "2018060710:39:48" "[oss-security] Secunia Research: Linux Kernel USB over IP Multiple Denial of Service Vulnerabilities" (number mark "U       vuln@secunia Jun  7  128/5137  " thread-indent "\"[oss-security] Secunia Research: Linux Kernel USB over IP Multiple Denial of Service Vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11311 invoked by uid 550); 7 Jun 2018 10:43:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3374 invoked from network); 7 Jun 2018 10:40:03 -0000
From: "Secunia Research" <vuln@secunia.com>
To: <oss-security@lists.openwall.com>
Cc: <vuln@secunia.com>
Date: Thu, 7 Jun 2018 12:39:48 +0200
Message-ID: <000001d3fe4b$dbee82c0$93cb8840$@secunia.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdP+SyQ9bRJ2h4R5QXaRcwMlp8cmVA==
Content-Language: en-us
Subject: [oss-security] Secunia Research: Linux Kernel USB over IP Multiple Denial of Service Vulnerabilities

======================================================================

                     Secunia Research 2018/05/30

  Linux Kernel USB over IP Multiple Denial of Service Vulnerabilities

======================================================================
Table of Contents

Affected Software....................................................1
Severity.............................................................2
Description of Vulnerabilities.......................................3
Solution.............................................................4
Time Table...........................................................5
Credits..............................................................6
References...........................................................7
About Flexera .......................................................8
Verification.........................................................9

======================================================================
1) Affected Software

* Linux Kernel versions 4.16.x, 4.14.x, 4.9.x, and 4.4.x.
  Other versions may also by affected.

======================================================================
2) Severity

Rating: Less critical
Impact: Denial of Service
Where: Local Area Network

======================================================================
3) Description of Vulnerabilities

Secunia Research has discovered multiple vulnerabilities in Linux
Kernel, which can be exploited by malicious people to cause a DoS
(Denial of Service).

Multiple race condition errors when handling probe, disconnect, and
rebind operations can be exploited to trigger a use-after-free
condition or a NULL pointer dereference by sending multiple USB over
IP packets.

Successful exploitation requires USB over IP daemon (usbipd) to be
running.

The vulnerabilities are confirmed in versions 4.17.0-rc1 and 4.15.0
and reported in versions 4.16.x prior to 4.16.11, 4.14.x prior to
4.14.43, 4.9.x prior to 4.9.102, and 4.4.x prior to 4.4.133. Other
versions may also by affected.

======================================================================
4) Solution

Update to version 4.16.11, 4.14.43, 4.9.102, or 4.4.133.
https://git.kernel.org/linus/22076557b07c12086eeb16b8ce2b0b735f7a27e7
https://git.kernel.org/linus/c171654caa875919be3c533d3518da8be5be966e

======================================================================
5) Time Table

2018/05/03 - Linux Kernel team contacted with vulnerabilities details.
2018/05/04 - Linux Kernel team confirmed the vulnerabilities.
2018/05/15 - Release of an official patch.
2018/05/30 - Release of Secunia Advisory SA81540.
2018/05/30 - Public disclosure of Secunia Research Advisory.

======================================================================
6) Credits

Jakub Jirasek, Secunia Research at Flexera.

======================================================================
7) References

The Flexera CNA has assigned CVE-2018-5814 identifier for the
vulnerabilities through the Common Vulnerabilities and Exposures (CVE)
project.

======================================================================
8) About Flexera

Flexera helps application producers and enterprises increase
application usage and the value they derive from their software.

http://www.flexera.com

Flexera delivers market-leading Software Vulnerability Management
solutions enabling enterprises to proactively identify and
remediate software vulnerabilities, effectively reducing the risk of
costly security breaches.

https://www.flexera.com/enterprise/products/

Flexera supports and contributes to the community in several
ways. We have always believed that reliable vulnerability
intelligence and tools to aid identifying and fixing vulnerabilities
should be freely available for consumers to ensure that users,
who care about their online privacy and security, can stay secure.
Only a few vendors address vulnerabilities in a proper way and help
users get updated and stay secure. End-users (whether private
individuals or businesses) are otherwise left largely alone, and
that is why back in 2002, Secunia Research started investigating,
coordinating disclosure and verifying software vulnerabilities.
In 2016, Secunia Research became a part of Flexera and today
our in-house software vulnerability research remains the core of
the Software Vulnerability Management products at Flexera.

https://www.flexera.com/enterprise/company/about/secunia-research/

The public Secunia Advisory database contains information for
researchers, security enthusiasts, and consumers to lookup individual
products and vulnerabilities and assess, whether they need to take
any actions to secure their systems or whether a given vulnerability
has already been discovered

https://secuniaresearch.flexerasoftware.com/community/advisories/

======================================================================
9) Verification

Please verify this advisory by visiting the Secunia Research website:
https://secuniaresearch.flexerasoftware.com/secunia_research/2018-8

======================================================================


