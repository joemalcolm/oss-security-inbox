X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["617" "Wednesday" "14" "August" "2019" "15:50:09" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1565815809.MOLRKPLE@httpd.apache.org>" "25" "[oss-security] CVE-2019-10082: mod_http2, read-after-free in h2 connection shutdown" nil nil nil "8" "2019081420:50:09" "[oss-security] CVE-2019-10082: mod_http2, read-after-free in h2 connection shutdown" (number mark "U       druggeri@apa Aug 14   25/617   " thread-indent "\"[oss-security] CVE-2019-10082: mod_http2, read-after-free in h2 connection shutdown\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10082: mod_http2, read-after-free in h2 connection shutdown" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20312 invoked by uid 550); 15 Aug 2019 07:39:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11754 invoked from network); 14 Aug 2019 20:52:30 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 14 Aug 2019 15:50:09 -0500
Message-ID: <1565815809.MOLRKPLE@httpd.apache.org>
Subject: [oss-security] CVE-2019-10082: mod_http2, read-after-free in h2 connection shutdown


CVE-2019-10082: mod_http2, read-after-free in h2 connection shutdown

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.18 to 2.4.39

Description:
Using fuzzed network input, the http/2 session
handling could be made to read memory after being freed,
during connection shutdown.
 
Mitigation:
All httpd users deploying mod_http2 should upgrade to 2.4.40 or later.
Unpatch servers can disable the h2/h2c protocol.

Credit:
The issue was discovered by Craig Young of Tripwire VERT, <vuln-report@secur3.us>.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

