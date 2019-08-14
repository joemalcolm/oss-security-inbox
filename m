X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["649" "Wednesday" "14" "August" "2019" "15:50:09" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1565815809.XRRYARAT@httpd.apache.org>" "25" "[oss-security] CVE-2019-10098: mod_rewrite configurations vulnerable to open redirect" nil nil nil "8" "2019081420:50:09" "[oss-security] CVE-2019-10098: mod_rewrite configurations vulnerable to open redirect" (number mark "U       druggeri@apa Aug 14   25/649   " thread-indent "\"[oss-security] CVE-2019-10098: mod_rewrite configurations vulnerable to open redirect\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10098: mod_rewrite configurations vulnerable to open redirect" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23864 invoked by uid 550); 15 Aug 2019 07:39:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11888 invoked from network); 14 Aug 2019 20:52:45 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 14 Aug 2019 15:50:09 -0500
Message-ID: <1565815809.XRRYARAT@httpd.apache.org>
Subject: [oss-security] CVE-2019-10098: mod_rewrite configurations vulnerable to open redirect


CVE-2019-10098: mod_rewrite configurations vulnerable to open redirect

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.39

Description:
Redirects configured with mod_rewrite that were intended to be self-referential
might be fooled by encoded newlines and redirect instead to an an unexpected 
URL within the request URL.
    
Mitigation:
Anchor captures used as back-references, prefix self-referential redirects with
/ or scheme, host, and port.

Credit:
The issue was discovered by Yukitsugu Sasaki <yukitugu.sasaki@gmail.com>

References:
https://httpd.apache.org/security/vulnerabilities_24.html

