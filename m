X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Friday" "23" "March" "2018" "21:50:00" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<E1ezZFo-00031K-0Y@romulus.home.bitnebula.com>" "24" "[oss-security] CVE-2017-15715: <FilesMatch> bypass with a trailing newline in the file name" nil nil nil "3" "2018032402:50:00" "[oss-security] CVE-2017-15715: <FilesMatch> bypass with a trailing newline in the file name" (number mark "U       druggeri@apa Mar 23   24/705   " thread-indent "\"[oss-security] CVE-2017-15715: <FilesMatch> bypass with a trailing newline in the file name\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23725 invoked by uid 550); 24 Mar 2018 11:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24391 invoked from network); 24 Mar 2018 02:50:15 -0000
To: announce@httpd.apache.org, oss-security@lists.openwall.com,
    security@httpd.apache.org
From: Daniel Ruggeri <druggeri@apache.org>
Message-Id: <E1ezZFo-00031K-0Y@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
Subject: [oss-security] CVE-2017-15715: <FilesMatch> bypass with a trailing newline in the file name


CVE-2017-15715: <FilesMatch> bypass with a trailing newline in the file name

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.29

Description:
The expression specified in <FilesMatch> could match '$' to a newline character
in a malicious filename, rather than matching only the end of the filename.
This could be exploited in environments where uploads of some files are are
externally blocked, but only by matching the trailing portion of the filename.

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered by Elar Lang - security.elarlang.eu

References:
https://httpd.apache.org/security/vulnerabilities_24.html
