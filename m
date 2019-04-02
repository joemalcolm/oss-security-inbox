X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["608" "Monday" "1" "April" "2019" "20:31:24" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "25" nil "^Date:" nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   25/608   " thread-indent "\"[oss-security] CVE-2019-0196: mod_http2, read-after-free on a string compare\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0196: mod_http2, read-after-free on a string compare" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3086 invoked by uid 550); 2 Apr 2019 07:39:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28131 invoked from network); 2 Apr 2019 01:34:06 -0000
Message-ID: <1554168684.QIKEPNSN@httpd.apache.org>
Date: Mon, 01 Apr 2019 20:31:24 -0500
From: Daniel Ruggeri <druggeri@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-0196: mod_http2, read-after-free on a string compare
To: oss-security@lists.openwall.com


CVE-2019-0196: mod_http2, read-after-free on a string compare

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.17 to 2.4.38

Description:
Using fuzzed network input, the http/2 request
handling could be made to access freed memory in string
comparision when determining the method of a request and
thus process the request incorrectly.
    
Mitigation:
All httpd users deploying mod_http2 should upgrade to 2.4.39 or later.

Credit:
The issue was discovered by Craig Young, <vuln-report@secur3.us>.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

