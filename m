X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["441" "Wednesday" "9" "June" "2021" "23:11:00" "+0200" "Christophe JAILLET" "jailletc36@apache.org" nil "23" "[oss-security] CVE-2021-26691: Apache httpd: mod_session response handling heap overflow" nil nil nil "6" nil nil (number mark "U       jailletc36@a Jun  9   23/441   " thread-indent "\"[oss-security] CVE-2021-26691: Apache httpd: mod_session response handling heap overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26691: Apache httpd: mod_session response handling heap overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11510 invoked by uid 550); 10 Jun 2021 11:44:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29741 invoked from network); 9 Jun 2021 21:19:59 -0000
From: Christophe JAILLET <jailletc36@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Jun 2021 23:11:00 +0200
Message-ID: <1622544226.VFAMUJAF@httpd.apache.org>
Subject: [oss-security] CVE-2021-26691: Apache httpd: mod_session response handling heap overflow


CVE-2021-26691: mod_session response handling heap overflow

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0 to 2.4.46

Description:
Apache HTTP Server 2.4.0 to 2.4.46
A specially crafted SessionHeader sent by an origin server could cause a heap overflow
    
Mitigation:
None

Credit:
Discovered internally by Christophe Jaillet

References:
https://httpd.apache.org/security/vulnerabilities_24.html

