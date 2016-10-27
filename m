X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1316" "Thursday" "27" "October" "2016" "13:30:37" "+0100" "Mark Thomas" "markt@apache.org" "<d3cf7807-67e5-d4cf-66f5-e90eb0fbabd2@apache.org>" "38" "[oss-security] [SECURITY] CVE-2016-0762 Apache Tomcat Realm Timing Attack" nil nil nil "10" "2016102712:30:37" "[oss-security] [SECURITY] CVE-2016-0762 Apache Tomcat Realm Timing Attack" (number mark "U       markt@apache Oct 27   38/1316  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-0762 Apache Tomcat Realm Timing Attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13489 invoked by uid 550); 27 Oct 2016 13:20:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3999 invoked from network); 27 Oct 2016 12:32:07 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d3cf7807-67e5-d4cf-66f5-e90eb0fbabd2@apache.org>
Date: Thu, 27 Oct 2016 13:30:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2016-0762 Apache Tomcat Realm Timing Attack

CVE-2016-0762 Apache Tomcat Realm Timing Attack

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
The Realm implementations did not process the supplied password if the
supplied user name did not exist. This made a timing attack possible to
determine valid user names. Note that the default configuration includes
the LockOutRealm which makes exploitation of this vulnerability harder.

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
This issue was discovered by The Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html
[4] http://tomcat.apache.org/security-6.html
