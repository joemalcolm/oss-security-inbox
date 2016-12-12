X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1368" "Monday" "12" "December" "2016" "09:42:20" "+0000" "Mark Thomas" "markt@apache.org" "<2c7b2749-74fb-8913-8f2a-c33933d2c9c0@apache.org>" "38" "[oss-security] [SECURITY] CVE-2016-8745 Apache Tomcat Information Disclosure" nil nil nil "12" "2016121209:42:20" "[oss-security] [SECURITY] CVE-2016-8745 Apache Tomcat Information Disclosure" (number mark "U       markt@apache Dec 12   38/1368  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-8745 Apache Tomcat Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27777 invoked by uid 550); 12 Dec 2016 09:53:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20372 invoked from network); 12 Dec 2016 09:42:35 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2c7b2749-74fb-8913-8f2a-c33933d2c9c0@apache.org>
Date: Mon, 12 Dec 2016 09:42:20 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-8745 Apache Tomcat Information Disclosure

CVE-2016-8745 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M13
Apache Tomcat 8.5.0 to 8.5.8
Earlier versions are not affected.

Description
The refactoring of the Connector code for 8.5.x onwards introduced a
regression in the error handling of the send file code for the NIO HTTP
connector. An error during send file processing resulted in the current
Processor object being added to the Processor cache multiple times. This
in turn meant that the same Processor could be used for concurrent
requests. Sharing a Processor can result in information leakage between
requests including, not not limited to, session ID and the response body.

Mitigation
Users of the NIO HTTP connector with the affected versions should apply
one of the following mitigations
- Switch to the NIO2 HTTP or APR HTTP connector
- Disable send file
- Upgrade to Apache Tomcat 9.0.0.M15 or later
  (Apache Tomcat 9.0.0.M14 has the fix but was not released)
- Upgrade to Apache Tomcat 8.5.9 or later

Credit:
This issue was reported publicly as Bug 60409 [1] and the security
implications identified by the Tomcat security team.

References:
[1] https://bz.apache.org/bugzilla/show_bug.cgi?id=60409
[2] http://tomcat.apache.org/security-9.html
[3] http://tomcat.apache.org/security-8.html

