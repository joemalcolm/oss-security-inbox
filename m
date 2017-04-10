X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1272" "Monday" "10" "April" "2017" "20:14:41" "+0100" "Mark Thomas" "markt@apache.org" "<5c4ad2ea-c39f-776a-aa54-cf4a7b4a82e9@apache.org>" "41" "[oss-security] [SECURITY] CVE-2017-5648 Apache Tomcat Information Disclosure" nil nil nil "4" "2017041019:14:41" "[oss-security] [SECURITY] CVE-2017-5648 Apache Tomcat Information Disclosure" (number mark "U       markt@apache Apr 10   41/1272  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5648 Apache Tomcat Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11962 invoked by uid 550); 10 Apr 2017 19:23:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28225 invoked from network); 10 Apr 2017 19:14:55 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5c4ad2ea-c39f-776a-aa54-cf4a7b4a82e9@apache.org>
Date: Mon, 10 Apr 2017 20:14:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2017-5648 Apache Tomcat Information Disclosure

CVE-2017-5648 Apache Tomcat Information Disclosure

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M17
Apache Tomcat 8.5.0 to 8.5.11
Apache Tomcat 8.0.0.RC1 to 8.0.41
Apache Tomcat 7.0.0 to 7.0.75
Apache Tomcat 6.0.x is not affected

Description
While investigating bug 60718, it was noticed that some calls to
application listeners did not use the appropriate facade object. When
running an untrusted application under a SecurityManager, it was
therefore possible for that untrusted application to retain a reference
to the request or response object and thereby access and/or modify
information associated with another web application.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 9.0.0.M18 or later
- Upgrade to Apache Tomcat 8.5.12 or later
- Upgrade to Apache Tomcat 8.0.42 or later
- Upgrade to Apache Tomcat 7.0.76 or later

Credit:
This issue was identified by the Tomcat security team.

History:
2017-04-10 Original advisory

References:
[1] https://bz.apache.org/bugzilla/show_bug.cgi?id=60718
[2] http://tomcat.apache.org/security-9.html
[3] http://tomcat.apache.org/security-8.html
[4] http://tomcat.apache.org/security-7.html

