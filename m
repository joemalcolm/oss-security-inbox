X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["678" "Wednesday" "14" "August" "2019" "15:50:09" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1565815809.IOUUBKIQ@httpd.apache.org>" "27" "[oss-security] CVE-2019-10092: Limited cross-site scripting in mod_proxy" nil nil nil "8" "2019081420:50:09" "[oss-security] CVE-2019-10092: Limited cross-site scripting in mod_proxy" (number mark "U       druggeri@apa Aug 14   27/678   " thread-indent "\"[oss-security] CVE-2019-10092: Limited cross-site scripting in mod_proxy\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10092: Limited cross-site scripting in mod_proxy" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22062 invoked by uid 550); 15 Aug 2019 07:39:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11789 invoked from network); 14 Aug 2019 20:52:35 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 14 Aug 2019 15:50:09 -0500
Message-ID: <1565815809.IOUUBKIQ@httpd.apache.org>
Subject: [oss-security] CVE-2019-10092: Limited cross-site scripting in mod_proxy


CVE-2019-10092: Limited cross-site scripting in mod_proxy

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0-2.4.39

Description:
A limited cross-site scripting issue was reported affecting
the mod_proxy error page. An attacker could cause the link on
the error page to be malfomed and instead point to a page of
their choice. This would only be exploitable where a server was
set up with proxying enabled but was misconfigured in such a way
that the Proxy Error page was displayed.

Mitigation:
None practical

Credit:
The issue was discovered by Matei "Mal" Badanoiu

References:
https://httpd.apache.org/security/vulnerabilities_24.html

