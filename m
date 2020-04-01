X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Wednesday" "1" "April" "2020" "07:54:12" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "29" nil "^Date:" nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   29/741   " thread-indent "\"[oss-security] CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18163 invoked by uid 550); 1 Apr 2020 13:22:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10204 invoked from network); 1 Apr 2020 12:58:51 -0000
Message-ID: <1585745652.JFUZVINU@httpd.apache.org>
Date: Wed, 01 Apr 2020 07:54:12 -0500
From: Daniel Ruggeri <druggeri@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect
To: oss-security@lists.openwall.com


CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.39

Description:
Apache HTTP Server 2.4.0 to 2.4.41
Redirects configured with mod_rewrite that were intended to be self-referential
might be fooled by encoded newlines and redirect instead to an an unexpected
URL within the request URL.

Note: This is the same defect as CVE-2019-10098. The fix for CVE-2019-10098 was
ineffective.

Mitigation:
Anchor captures used as back-references, prefix self-referential redirects with
/ or scheme, host, and port.

Credit:
The issue was discovered by Fabrice Perez

References:
https://httpd.apache.org/security/vulnerabilities_24.html

