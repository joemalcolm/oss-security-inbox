X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1814" "Friday" "23" "February" "2018" "00:33:21" "+0000" "Mark Thomas" "markt@apache.org" "<119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>" "52" "[oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored" nil nil nil "2" "2018022300:33:21" "[oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored" (number mark "U       markt@apache Feb 23   52/1814  " thread-indent "\"[oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored\"\n") "<2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>" ("<2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31911 invoked by uid 550); 23 Feb 2018 03:07:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3328 invoked from network); 23 Feb 2018 00:33:35 -0000
References: <2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
X-Forwarded-Message-Id: <2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>
Message-ID: <119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>
Date: Fri, 23 Feb 2018 00:33:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context
 root are ignored

-------- Forwarded Message --------
Subject: [SECURITY] CVE-2018-1304 Security constraints mapped to context
root are ignored
Date: Fri, 23 Feb 2018 00:27:30 +0000
From: Mark Thomas <markt@apache.org>
Reply-To: announce@tomcat.apache.org, announce@tomcat.apache.org
To: Tomcat Users List <users@tomcat.apache.org>
CC: Tomcat Developers List <dev@tomcat.apache.org>, announce@apache.org,
announce@tomcat.apache.org <announce@tomcat.apache.org>

CVE-2018-1304 Security constraints mapped to context root are ignored

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.4
Apache Tomcat 8.5.0 to 8.5.27
Apache Tomcat 8.0.0.RC1 to 8.0.49
Apache Tomcat 7.0.0 to 7.0.84

Description:
The URL pattern of "" (the empty string) which exactly maps to the
context root was not correctly handled when used as part of a security
constraint definition. This caused the constraint to be ignored. It was,
therefore, possible for unauthorised users to gain access to web
application resources that should have been protected. Only security
constraints with a URL pattern of the empty string were affected.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Review security constraints and confirm none use a URL patten of ""
  (the empty string)
- Upgrade to Apache Tomcat 9.0.5 or later
- Upgrade to Apache Tomcat 8.5.28 or later
- Upgrade to Apache Tomcat 8.0.50 or later
- Upgrade to Apache Tomcat 7.0.85 or later

Credit:
This issue was reported publicly as bug 62067 and the security
implications identified by the Apache Tomcat Security Team.

History:
2018-02-23 Original advisory

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html

