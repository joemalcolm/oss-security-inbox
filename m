X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Monday" "1" "April" "2019" "20:31:24" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "25" nil nil nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   25/638   " thread-indent "\"[oss-security] CVE-2019-0217: mod_auth_digest access control bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0217: mod_auth_digest access control bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5835 invoked by uid 550); 2 Apr 2019 07:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28341 invoked from network); 2 Apr 2019 01:34:22 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 01 Apr 2019 20:31:24 -0500
Message-ID: <1554168684.FQZJUOYK@httpd.apache.org>
Subject: [oss-security] CVE-2019-0217: mod_auth_digest access control bypass


CVE-2019-0217: mod_auth_digest access control bypass

Severity: important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.38

Description:
In Apache HTTP Server 2.4 release 2.4.38 and prior, a race condition
in mod_auth_digest when running in a threaded server could allow a
user with valid credentials to authenticate using another username,
bypassing configured access control restrictions.

Mitigation:
All httpd users deploying mod_auth_digest should upgrade to 2.4.39 or later.

Credit:
The issue was discovered by Simon Kappel.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

