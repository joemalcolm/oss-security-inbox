X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["924" "Tuesday" "22" "November" "2016" "09:58:12" "+0000" "Mark Thomas" "markt@apache.org" "<7a32e817-529e-e7f6-491a-f990f378ec45@apache.org>" "31" "[oss-security] [SECURITY] CVE-2016-6817 Apache Tomcat Denial of Service" nil nil nil "11" "2016112209:58:12" "[oss-security] [SECURITY] CVE-2016-6817 Apache Tomcat Denial of Service" (number mark "U       markt@apache Nov 22   31/924   " thread-indent "\"[oss-security] [SECURITY] CVE-2016-6817 Apache Tomcat Denial of Service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21580 invoked by uid 550); 22 Nov 2016 14:54:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3808 invoked from network); 22 Nov 2016 09:58:30 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7a32e817-529e-e7f6-491a-f990f378ec45@apache.org>
Date: Tue, 22 Nov 2016 09:58:12 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-6817 Apache Tomcat Denial of Service

CVE-2016-6817 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M11
Apache Tomcat 8.5.0 to 8.5.6
Earlier versions are not affected.

Description
The HTTP/2 header parser entered an infinite loop if a header was
received that was larger than the available buffer. This made a denial
of service attack possible.

Mitigation
Users of affected versions should apply one of the following mitigations
- Upgrade to Apache Tomcat 9.0.0.M13 or later
  (Apache Tomcat 9.0.0.M12 has the fix but was not released)
- Upgrade to Apache Tomcat 8.5.8 or later
  (Apache Tomcat 8.5.7 has the fix but was not released)

Credit:
This issue was reported as a bug and the security implications
identified by the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html

