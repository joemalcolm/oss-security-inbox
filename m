X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["680" "Friday" "7" "August" "2020" "06:31:38" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1596799898.LUXZKPQK@httpd.apache.org>" "26" "[oss-security] CVE-2020-11993: Apache httpd: Push Diary Crash on Specifically Crafted HTTP/2 Header" nil nil nil "8" "2020080711:31:38" "[oss-security] CVE-2020-11993: Apache httpd: Push Diary Crash on Specifically Crafted HTTP/2 Header" (number mark "U       druggeri@apa Aug  7   26/680   " thread-indent "\"[oss-security] CVE-2020-11993: Apache httpd: Push Diary Crash on Specifically Crafted HTTP/2 Header\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11993: Apache httpd: Push Diary Crash on Specifically Crafted HTTP/2 Header" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14232 invoked by uid 550); 7 Aug 2020 11:56:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6086 invoked from network); 7 Aug 2020 11:44:05 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Fri, 07 Aug 2020 06:31:38 -0500
Message-ID: <1596799898.LUXZKPQK@httpd.apache.org>
Subject: [oss-security] CVE-2020-11993: Apache httpd: Push Diary Crash on Specifically Crafted HTTP/2 Header


CVE-2020-11993: Push Diary Crash on Specifically Crafted HTTP/2 Header

Severity: moderate

Vendor: Apache Software Foundation

Versions Affected:
Apache HTTP Server 2.4.20 to 2.4.43

Description:
Apache HTTP Server versions 2.4.20 to 2.4.43
When trace/debug was enabled for the HTTP/2 module and on
certain traffic edge patterns, logging statements were made on
the wrong connection, causing concurrent use of memory pools.

Configuring the LogLevel of mod_http2 above "info" will mitigate this vulnerability for unpatched servers.

Mitigation:

Credit:
Felix Wilhelm of Google Project Zero

References:
https://httpd.apache.org/security/vulnerabilities_24.html#CVE-2020-11993

