X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["492" "Friday" "7" "August" "2020" "06:31:38" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1596799897.AHGBDBGY@httpd.apache.org>" "23" "[oss-security] CVE-2020-11985: Apache httpd: CWE-345: Insufficient verification of data authenticity" nil nil nil "8" "2020080711:31:38" "[oss-security] CVE-2020-11985: Apache httpd: CWE-345: Insufficient verification of data authenticity" (number mark "U       druggeri@apa Aug  7   23/492   " thread-indent "\"[oss-security] CVE-2020-11985: Apache httpd: CWE-345: Insufficient verification of data authenticity\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11985: Apache httpd: CWE-345: Insufficient verification of data authenticity" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14001 invoked by uid 550); 7 Aug 2020 11:56:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6008 invoked from network); 7 Aug 2020 11:44:00 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Fri, 07 Aug 2020 06:31:38 -0500
Message-ID: <1596799897.AHGBDBGY@httpd.apache.org>
Subject: [oss-security] CVE-2020-11985: Apache httpd: CWE-345: Insufficient verification of data authenticity


CVE-2020-11985: CWE-345: Insufficient verification of data authenticity

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.1 to 2.4.23

Description:
Apache HTTP Server 2.4.1 to 2.4.23
IP address spoofing when proxying using mod_remoteip and mod_rewrite
    
Mitigation:
Disable mod_remoteip

Credit:
Initially reported at https://bugs.launchpad.net/ubuntu/+source/apache2/+bug/1875299

References:
https://httpd.apache.org/security/vulnerabilities_24.html

