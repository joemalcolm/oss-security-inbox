X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Wednesday" "14" "August" "2019" "15:50:09" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1565815809.YSSF0CVU@httpd.apache.org>" "26" "[oss-security] CVE-2019-9517: mod_http2, DoS attack by exhausting h2 workers" nil nil nil "8" "2019081420:50:09" "[oss-security] CVE-2019-9517: mod_http2, DoS attack by exhausting h2 workers" (number mark "U       druggeri@apa Aug 14   26/697   " thread-indent "\"[oss-security] CVE-2019-9517: mod_http2, DoS attack by exhausting h2 workers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-9517: mod_http2, DoS attack by exhausting h2 workers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24528 invoked by uid 550); 15 Aug 2019 07:39:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11956 invoked from network); 14 Aug 2019 20:52:50 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 14 Aug 2019 15:50:09 -0500
Message-ID: <1565815809.YSSF0CVU@httpd.apache.org>
Subject: [oss-security] CVE-2019-9517: mod_http2, DoS attack by exhausting h2 workers


CVE-2019-9517: mod_http2, DoS attack by exhausting h2 workers.

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.20 to 2.4.39

Description:
A malicious client could perform a DoS attack by flooding
a connection with requests and basically never reading responses
on the TCP connection. Depending on h2 worker dimensioning, it was
possible to block those with relatively few connections.
 
Mitigation:
All httpd users deploying mod_http2 should upgrade to 2.4.40 or later.
Unpatched servers can disable HTTP/2 protocol.

Credit:
The issue was discovered by Jonathan Looney of Netflix.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

