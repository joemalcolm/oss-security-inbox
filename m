X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["785" "Monday" "1" "April" "2019" "20:31:27" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "27" nil nil nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   27/785   " thread-indent "\"[oss-security] CVE-2019-0220: URL normalization inconsistincies\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0220: URL normalization inconsistincies" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7373 invoked by uid 550); 2 Apr 2019 07:40:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28376 invoked from network); 2 Apr 2019 01:34:26 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 01 Apr 2019 20:31:27 -0500
Message-ID: <1554168687.YKUIWQPL@httpd.apache.org>
Subject: [oss-security] CVE-2019-0220: URL normalization inconsistincies


CVE-2019-0220: URL normalization inconsistincies

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.39

Description:
When the path component of a request URL contains multiple consecutive slashes
('/'), directives such as LocationMatch and RewriteRule must account for
duplicates in regular expressions while other aspects of the servers processing
will implicitly collapse them.
    
Mitigation:
Regular expressions used in directives that match against the path component
of the request URL can be modified to account for multiple consecutive slashes.

Credit:
The issue was discovered by Bernhard Lorenz <bernhard.lorenz@alphastrike.io> 
of Alpha Strike Labs GmbH".

References:
https://httpd.apache.org/security/vulnerabilities_24.html

