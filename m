X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["695" "Friday" "23" "March" "2018" "21:50:00" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<E1ezZFo-00031p-ID@romulus.home.bitnebula.com>" "25" "[oss-security] CVE-2018-1312: Weak Digest auth nonce generation in mod_auth_digest" nil nil nil "3" "2018032402:50:00" "[oss-security] CVE-2018-1312: Weak Digest auth nonce generation in mod_auth_digest" (number mark "U       druggeri@apa Mar 23   25/695   " thread-indent "\"[oss-security] CVE-2018-1312: Weak Digest auth nonce generation in mod_auth_digest\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27771 invoked by uid 550); 24 Mar 2018 11:25:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24389 invoked from network); 24 Mar 2018 02:50:15 -0000
To: announce@httpd.apache.org, oss-security@lists.openwall.com,
    security@httpd.apache.org
From: Daniel Ruggeri <druggeri@apache.org>
Message-Id: <E1ezZFo-00031p-ID@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
Subject: [oss-security] CVE-2018-1312: Weak Digest auth nonce generation in mod_auth_digest


CVE-2018-1312: Weak Digest auth nonce generation in mod_auth_digest

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.2.0 to 2.4.29

Description:
When generating an HTTP Digest authentication challenge, the nonce
sent to prevent reply attacks was not correctly generated using a
pseudo-random seed.  In a cluster of servers using a common Digest
authentication configuration, HTTP requests could be replayed across
servers by an attacker without detection.
               
Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered by Nicolas Daniels.

References:
https://httpd.apache.org/security/vulnerabilities_24.html
