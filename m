X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["833" "Wednesday" "14" "August" "2019" "15:50:09" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1565815809.0ELYBFHH@httpd.apache.org>" "28" "[oss-security] CVE-2019-10097: mod_remoteip stack buffer overflow and NULL pointer dereference" nil nil nil "8" "2019081420:50:09" "[oss-security] CVE-2019-10097: mod_remoteip stack buffer overflow and NULL pointer dereference" (number mark "U       druggeri@apa Aug 14   28/833   " thread-indent "\"[oss-security] CVE-2019-10097: mod_remoteip stack buffer overflow and NULL pointer dereference\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10097: mod_remoteip stack buffer overflow and NULL pointer dereference" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22522 invoked by uid 550); 15 Aug 2019 07:39:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11829 invoked from network); 14 Aug 2019 20:52:40 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 14 Aug 2019 15:50:09 -0500
Message-ID: <1565815809.0ELYBFHH@httpd.apache.org>
Subject: [oss-security] CVE-2019-10097: mod_remoteip stack buffer overflow and NULL pointer dereference


CVE-2019-10097: mod_remoteip stack buffer overflow and NULL pointer dereference

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.32 to 2.4.39

Description:
When mod_remoteip was configured to use a trusted intermediary proxy
server using the "PROXY" protocol, a specially crafted PROXY header
could trigger a stack buffer overflow or NULL pointer deference.
This vulnerability could only be triggered by a trusted proxy and not
by untrusted HTTP clients.

PROXY protocol support was added to mod_remoteip in release 2.4.33.

Mitigation:
All httpd users should upgrade to 2.4.41 or later.

Credit:
The issue was discovered by Daniel McCarney <cpu@letsencrypt.org> Let's Encrypt / Internet Security Research Group (ISRG)

References:
https://httpd.apache.org/security/vulnerabilities_24.html

