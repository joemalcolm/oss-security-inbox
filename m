X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["809" "Tuesday" "22" "January" "2019" "17:43:37" "" "Daniel Ruggeri" "druggeri@apache.org" "<fake-VM-id.d49be5ccc997741d14fbde594db03e18@talos.iv>" "28" "[oss-security] CVE-2019-0190: mod_ssl 2.4.37 remote DoS when used with OpenSSL 1.1.1" nil nil nil "1" "2019012217:43:37" "[oss-security] CVE-2019-0190: mod_ssl 2.4.37 remote DoS when used with OpenSSL 1.1.1" (number mark "U       druggeri@apa Jan 22   28/809   " thread-indent "\"[oss-security] CVE-2019-0190: mod_ssl 2.4.37 remote DoS when used with OpenSSL 1.1.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <vsBHyOuBBo1r>
Received: (qmail 21760 invoked by uid 550); 22 Jan 2019 17:40:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26369 invoked from network); 22 Jan 2019 17:13:09 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-0190: mod_ssl 2.4.37 remote DoS when used with OpenSSL 1.1.1
Message-ID: <20190122174015.5idwo6kb4kyV8zoZLiMudBjgAgSU5-q54-MygfVQ3v8@z>


CVE-2019-0190: mod_ssl 2.4.37 remote DoS when used with OpenSSL 1.1.1

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.37

Description:
A bug exists in the way mod_ssl handled client renegotiations.
A remote attacker could send a carefully crafted request that
would cause mod_ssl to enter a loop leading to a denial of
service.  This bug can be only triggered with Apache HTTP Server
version 2.4.37 when using OpenSSL version 1.1.1 or later, due to
an interaction in changes to handling of renegotiation attempts.

Mitigation:
All httpd users consuming mod_ssl combined with OpenSSL 1.1.1 or later
should upgrade to 2.4.38 or later.

Credit:
The issue was identified through user bug reports.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

