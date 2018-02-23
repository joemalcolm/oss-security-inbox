X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1612" "Friday" "23" "February" "2018" "00:33:34" "+0000" "Mark Thomas" "markt@apache.org" "<0650ff91-3841-9773-14d9-58ba9b97698a@apache.org>" "49" "[oss-security] Fwd: [SECURITY] CVE-2018-1305 Security constraint annotations applied too late" nil nil nil "2" "2018022300:33:34" "[oss-security] Fwd: [SECURITY] CVE-2018-1305 Security constraint annotations applied too late" (number mark "U       markt@apache Feb 23   49/1612  " thread-indent "\"[oss-security] Fwd: [SECURITY] CVE-2018-1305 Security constraint annotations applied too late\"\n") "<8b41c43e-20cd-10d0-5e2e-e3947bd26a32@apache.org>" ("<8b41c43e-20cd-10d0-5e2e-e3947bd26a32@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30148 invoked by uid 550); 23 Feb 2018 03:07:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3427 invoked from network); 23 Feb 2018 00:33:47 -0000
References: <8b41c43e-20cd-10d0-5e2e-e3947bd26a32@apache.org>
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
X-Forwarded-Message-Id: <8b41c43e-20cd-10d0-5e2e-e3947bd26a32@apache.org>
Message-ID: <0650ff91-3841-9773-14d9-58ba9b97698a@apache.org>
Date: Fri, 23 Feb 2018 00:33:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <8b41c43e-20cd-10d0-5e2e-e3947bd26a32@apache.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Fwd: [SECURITY] CVE-2018-1305 Security constraint annotations applied
 too late

-------- Forwarded Message --------
Subject: [SECURITY] CVE-2018-1305 Security constraint annotations
applied too late
Date: Fri, 23 Feb 2018 00:27:36 +0000
From: Mark Thomas <markt@apache.org>
Reply-To: announce@tomcat.apache.org, announce@tomcat.apache.org
To: Tomcat Users List <users@tomcat.apache.org>
CC: Tomcat Developers List <dev@tomcat.apache.org>, announce@apache.org,
announce@tomcat.apache.org <announce@tomcat.apache.org>

CVE-2018-1305 Security constraint annotations applied too late

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.4
Apache Tomcat 8.5.0 to 8.5.27
Apache Tomcat 8.0.0.RC1 to 8.0.49
Apache Tomcat 7.0.0 to 7.0.84

Description:
Security constraints defined by annotations of Servlets were only
applied once a Servlet had been loaded. Because security constraints
defined in this way apply to the URL pattern and any URLs below that
point, it was possible - depending on the order Servlets were loaded -
for some security constraints not to be applied. This could have exposed
resources to users who were not authorised to access them.

Mitigation:
Users of the affected versions should apply one of the following
mitigations. Upgrade to:
- Apache Tomcat 9.0.5 or later
- Apache Tomcat 8.5.28 or later
- Apache Tomcat 8.0.50 or later
- Apache Tomcat 7.0.85 or later

Credit:
This issue was identified by the Apache Tomcat Security Team.

History:
2018-02-23 Original advisory

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html

