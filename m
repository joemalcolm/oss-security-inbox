X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1539" "Tuesday" "22" "November" "2016" "09:57:59" "+0000" "Mark Thomas" "markt@apache.org" "<10bd295d-3a8f-a08a-4c60-9af84d78ef25@apache.org>" "42" "[oss-security] [SECURITY] CVE-2016-8735 Apache Tomcat Remote Code Execution" nil nil nil "11" "2016112209:57:59" "[oss-security] [SECURITY] CVE-2016-8735 Apache Tomcat Remote Code Execution" (number mark "U       markt@apache Nov 22   42/1539  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-8735 Apache Tomcat Remote Code Execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22318 invoked by uid 550); 22 Nov 2016 14:54:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3748 invoked from network); 22 Nov 2016 09:58:17 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <10bd295d-3a8f-a08a-4c60-9af84d78ef25@apache.org>
Date: Tue, 22 Nov 2016 09:57:59 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-8735 Apache Tomcat Remote Code Execution

CVE-2016-8735 Apache Tomcat Remote Code Execution

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M11
Apache Tomcat 8.5.0 to 8.5.6
Apache Tomcat 8.0.0.RC1 to 8.0.38
Apache Tomcat 7.0.0 to 7.0.72
Apache Tomcat 6.0.0 to 6.0.47
Earlier, unsupported versions may also be affected.

Description
The JmxRemoteLifecycleListener was not updated to take account of
Oracle's fix for CVE-2016-3427. Therefore, Tomcat installations using
this listener remained vulnerable to a similar remote code execution
vulnerability. This issue has been rated as important rather than
critical due to the small number of installations using this listener
and that it would be highly unusual for the JMX ports to be accessible
to an attacker even when the listener is used.

Mitigation
Users of affected versions should apply one of the following mitigations
- Upgrade to Apache Tomcat 9.0.0.M13 or later
  (Apache Tomcat 9.0.0.M12 has the fix but was not released)
- Upgrade to Apache Tomcat 8.5.8 or later
  (Apache Tomcat 8.5.7 has the fix but was not released)
- Upgrade to Apache Tomcat 8.0.39 or later
- Upgrade to Apache Tomcat 7.0.73 or later
- Upgrade to Apache Tomcat 6.0.48 or later

Credit:
This issue was discovered by Pierre Ernst and reported responsibly to
the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html
[4] http://tomcat.apache.org/security-6.html
