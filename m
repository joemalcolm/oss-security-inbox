X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1371" "Thursday" "27" "October" "2016" "13:31:14" "+0100" "Mark Thomas" "markt@apache.org" "<e1000c38-4d7c-9067-7f54-363845f89823@apache.org>" "39" "[oss-security] [SECURITY] CVE-2016-6794 Apache Tomcat Security System Property Disclosure" nil nil nil "10" "2016102712:31:14" "[oss-security] [SECURITY] CVE-2016-6794 Apache Tomcat Security System Property Disclosure" (number mark "U       markt@apache Oct 27   39/1371  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-6794 Apache Tomcat Security System Property Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14121 invoked by uid 550); 27 Oct 2016 13:20:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5270 invoked from network); 27 Oct 2016 12:32:41 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e1000c38-4d7c-9067-7f54-363845f89823@apache.org>
Date: Thu, 27 Oct 2016 13:31:14 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-6794 Apache Tomcat Security System Property
 Disclosure

CVE-2016-6794 Apache Tomcat System Property Disclosure

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M9
Apache Tomcat 8.5.0 to 8.5.4
Apache Tomcat 8.0.0.RC1 to 8.0.36
Apache Tomcat 7.0.0 to 7.0.70
Apache Tomcat 6.0.0 to 6.0.45
Earlier, unsupported versions may also be affected.

Description
When a SecurityManager is configured, a web application's ability to
read system properties should be controlled by the SecurityManager.
Tomcat's system property replacement feature for configuration files
could be used by a malicious web application to bypass the
SecurityManager and read system properties that should not be visible.

Mitigation
Users of affected versions should apply one of the following mitigations
- Upgrade to Apache Tomcat 9.0.0.M10 or later
- Upgrade to Apache Tomcat 8.5.5 or later
- Upgrade to Apache Tomcat 8.0.37 or later
- Upgrade to Apache Tomcat 7.0.72 or later
  (Apache Tomcat 7.0.71 has the fix but was not released)
- Upgrade to Apache Tomcat 6.0.47 or later
  (Apache Tomcat 6.0.46 has the fix but was not released)

Credit:
This issue was discovered by the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html
[4] http://tomcat.apache.org/security-6.html
