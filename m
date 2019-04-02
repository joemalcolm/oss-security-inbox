X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["789" "Monday" "1" "April" "2019" "20:31:24" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "28" nil nil nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   28/789   " thread-indent "\"[oss-security] CVE-2019-0211: Apache HTTP Server privilege escalation from modules' scripts\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0211: Apache HTTP Server privilege escalation from modules' scripts" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5360 invoked by uid 550); 2 Apr 2019 07:39:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28250 invoked from network); 2 Apr 2019 01:34:14 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 01 Apr 2019 20:31:24 -0500
Message-ID: <1554168684.QNYAOFIX@httpd.apache.org>
Subject: [oss-security] CVE-2019-0211: Apache HTTP Server privilege escalation from modules' scripts


CVE-2019-0211: Apache HTTP Server privilege escalation from modules' scripts

Severity: important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.17 to 2.4.38

Description:
In Apache HTTP Server 2.4 releases 2.4.17 to 2.4.38, with MPM event,
worker or prefork, code executing in less-privileged child processes
or threads (including scripts executed by an in-process scripting
interpreter) could execute arbitrary code with the privileges of the
parent process (usually root) by manipulating the scoreboard. Non-Unix
systems are not affected.

Mitigation:
All httpd users running MPM event, worker or prefork should upgrade to
2.4.39 or later.

Credit:
The issue was discovered by Charles Fol.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

