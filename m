X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["790" "Wednesday" "9" "June" "2021" "23:11:00" "+0200" "Christophe JAILLET" "jailletc36@apache.org" nil "23" "[oss-security] CVE-2020-35452: Apache httpd: mod_auth_digest possible stack overflow by one nul byte" nil nil nil "6" nil nil (number mark "U       jailletc36@a Jun  9   23/790   " thread-indent "\"[oss-security] CVE-2020-35452: Apache httpd: mod_auth_digest possible stack overflow by one nul byte\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-35452: Apache httpd: mod_auth_digest possible stack overflow by one nul byte" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10025 invoked by uid 550); 10 Jun 2021 11:44:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28572 invoked from network); 9 Jun 2021 21:19:43 -0000
From: Christophe JAILLET <jailletc36@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Jun 2021 23:11:00 +0200
Message-ID: <1622544226.GVTSKDOC@httpd.apache.org>
Subject: [oss-security] CVE-2020-35452: Apache httpd: mod_auth_digest possible stack overflow by one nul byte


CVE-2020-35452: mod_auth_digest possible stack overflow by one nul byte

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.46

Description:
Apache HTTP Server 2.4.0 to 2.4.46
A specially crafted Digest nonce can cause a stack overflow in mod_auth_digest. There is no report of this overflow being exploitable, nor the Apache HTTP Server team could create one, though some particular compiler and/or compilation option might make it possible, with limited consequences anyway due to the size (a single byte) and the value (zero byte) of the overflow
    
Mitigation:
None

Credit:
This issue was discovered and reported by GHSL team member @antonio-morales (Antonio Morales)

References:
https://httpd.apache.org/security/vulnerabilities_24.html

