X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["767" "Friday" "23" "March" "2018" "21:50:00" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<E1ezZFo-00031W-7i@romulus.home.bitnebula.com>" "25" "[oss-security] CVE-2018-1301: Possible out of bound access after failure in reading the HTTP request" nil nil nil "3" "2018032402:50:00" "[oss-security] CVE-2018-1301: Possible out of bound access after failure in reading the HTTP request" (number mark "U       druggeri@apa Mar 23   25/767   " thread-indent "\"[oss-security] CVE-2018-1301: Possible out of bound access after failure in reading the HTTP request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11444 invoked by uid 550); 24 Mar 2018 11:22:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24394 invoked from network); 24 Mar 2018 02:50:15 -0000
To: announce@httpd.apache.org, oss-security@lists.openwall.com,
    security@httpd.apache.org
From: Daniel Ruggeri <druggeri@apache.org>
Message-Id: <E1ezZFo-00031W-7i@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
Subject: [oss-security] CVE-2018-1301: Possible out of bound access after failure in reading the HTTP request


CVE-2018-1301: Possible out of bound access after failure in reading the HTTP request

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.0.1 to 2.4.29

Description:
A specially crafted request could have crashed the Apache HTTP Server prior to
version 2.4.30, due to an out of bound access after a size limit is reached by
reading the HTTP header. This vulnerability is considered very hard if not
impossible to trigger in non-debug mode (both log and build level), so it is
classified as low risk for common server usage.

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered by Robert Swiecki, bug found by honggfuzz

References:
https://httpd.apache.org/security/vulnerabilities_24.html
