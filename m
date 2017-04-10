X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1147" "Monday" "10" "April" "2017" "20:14:34" "+0100" "Mark Thomas" "markt@apache.org" "<0805f92b-b971-73a2-98c4-0e1b182cd605@apache.org>" "37" "[oss-security] [SECURITY] CVE-2017-5651 Apache Tomcat Information Disclosure" "^Date:" nil nil "4" "2017041019:14:34" "[oss-security] [SECURITY] CVE-2017-5651 Apache Tomcat Information Disclosure" (number mark "U       markt@apache Apr 10   37/1147  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5651 Apache Tomcat Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9909 invoked by uid 550); 10 Apr 2017 19:23:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28069 invoked from network); 10 Apr 2017 19:14:49 -0000
Message-ID: <0805f92b-b971-73a2-98c4-0e1b182cd605@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 10 Apr 2017 20:14:34 +0100
From: Mark Thomas <markt@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2017-5651 Apache Tomcat Information Disclosure
To: oss-security@lists.openwall.com

CVE-2017-5651 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M18
Apache Tomcat 8.5.0 to 8.5.12
Apache Tomcat 8.0.x and earlier are not affected

Description:
The refactoring of the HTTP connectors for 8.5.x onwards, introduced a
regression in the send file processing. If the send file processing
completed quickly, it was possible for the Processor to be added to the
processor cache twice. This could result in the same Processor being
used for multiple requests which in turn could lead to unexpected errors
and/or response mix-up.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 9.0.0.M19 or later
- Upgrade to Apache Tomcat 8.5.13 or later

Credit:
This issue was reported publicly as Bug 60918 [1] and the security
implications identified by the Tomcat security team.

History:
2017-04-10 Original advisory

References:
[1] https://bz.apache.org/bugzilla/show_bug.cgi?id=60918
[2] http://tomcat.apache.org/security-9.html
[3] http://tomcat.apache.org/security-8.html

