X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["752" "Monday" "1" "April" "2019" "20:31:24" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "26" nil nil nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   26/752   " thread-indent "\"[oss-security] CVE-2019-0197: mod_http2, possible crash on late upgrade\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0197: mod_http2, possible crash on late upgrade" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3363 invoked by uid 550); 2 Apr 2019 07:39:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28164 invoked from network); 2 Apr 2019 01:34:10 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 01 Apr 2019 20:31:24 -0500
Message-ID: <1554168684.JAZHRVAC@httpd.apache.org>
Subject: [oss-security] CVE-2019-0197: mod_http2, possible crash on late upgrade


CVE-2019-0197: mod_http2, possible crash on late upgrade

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.34 to 2.4.38

Description:
When HTTP/2 was enabled for a http: host or H2Upgrade was enabled for h2
on a https: host, an Upgrade request from http/1.1 to http/2 that was
not the first request on a connection could lead to a misconfiguration
and crash. Servers that never enabled the h2 protocol or only enabled it
for https: and did not set"H2Upgrade on" are unaffected by this issue.

Mitigation:
All httpd users deploying mod_http2 should upgrade to 2.4.39 or later.

Credit:
The issue was discovered by Stefan Eissing, greenbytes.de.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

