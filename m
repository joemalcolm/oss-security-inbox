X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Monday" "1" "April" "2019" "20:31:27" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "27" nil nil nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   27/686   " thread-indent "\"[oss-security] CVE-2019-0215: mod_ssl access control bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0215: mod_ssl access control bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5521 invoked by uid 550); 2 Apr 2019 07:39:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28310 invoked from network); 2 Apr 2019 01:34:18 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 01 Apr 2019 20:31:27 -0500
Message-ID: <1554168687.VKNZOQAY@httpd.apache.org>
Subject: [oss-security] CVE-2019-0215: mod_ssl access control bypass


CVE-2019-0215: mod_ssl access control bypass

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.27 to 2.4.38

Description:
In Apache HTTP Server 2.4 releases 2.4.37 and 2.4.38, a
bug in mod_ssl when using per-location client certificate
verification with TLSv1.3 allowed a client to bypass
configured access control restrictions.
               
Mitigation:
This issue can be mitigated by disabling the TLSv1.3 protocol for a
VirtualHost which requires per-location or per-directory client
certificate authentication.

Credit:
The issue was discovered by Michael Kaufmann.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

