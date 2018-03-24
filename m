X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["782" "Friday" "23" "March" "2018" "21:50:00" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<E1ezZFo-00031d-BB@romulus.home.bitnebula.com>" "25" "[oss-security] CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown" nil nil nil "3" "2018032402:50:00" "[oss-security] CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown" (number mark "U       druggeri@apa Mar 23   25/782   " thread-indent "\"[oss-security] CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21978 invoked by uid 550); 24 Mar 2018 11:24:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24393 invoked from network); 24 Mar 2018 02:50:15 -0000
To: announce@httpd.apache.org, oss-security@lists.openwall.com,
    security@httpd.apache.org
From: Daniel Ruggeri <druggeri@apache.org>
Message-Id: <E1ezZFo-00031d-BB@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
Subject: [oss-security] CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown


CVE-2018-1302: Possible write of after free on HTTP/2 stream shutdown

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.17 to 2.4.29

Description:
When an HTTP/2 stream was destroyed after being handled, the Apache HTTP Server
prior to version 2.4.30 could have written a NULL pointer potentially to an
already freed memory. The memory pools maintained by the server make this
vulnerabilty hard to trigger in usual configurations, the reporter and the team
could not reproduce it outside debug builds, so it is classified as low risk.

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered by Robert Swiecki, bug found by honggfuzz

References:
https://httpd.apache.org/security/vulnerabilities_24.html
