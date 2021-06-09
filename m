X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Wednesday" "9" "June" "2021" "23:11:00" "+0200" "Christophe JAILLET" "jailletc36@apache.org" nil "23" "[oss-security] CVE-2020-13950: Apache httpd: mod_proxy_http NULL pointer dereference" nil nil nil "6" nil nil (number mark "U       jailletc36@a Jun  9   23/537   " thread-indent "\"[oss-security] CVE-2020-13950: Apache httpd: mod_proxy_http NULL pointer dereference\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13950: Apache httpd: mod_proxy_http NULL pointer dereference" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9507 invoked by uid 550); 10 Jun 2021 11:44:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28525 invoked from network); 9 Jun 2021 21:19:38 -0000
From: Christophe JAILLET <jailletc36@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Jun 2021 23:11:00 +0200
Message-ID: <1622544225.GNSHSBOT@httpd.apache.org>
Subject: [oss-security] CVE-2020-13950: Apache httpd: mod_proxy_http NULL pointer dereference


CVE-2020-13950: mod_proxy_http NULL pointer dereference

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.41 to 2.4.46

Description:
Apache HTTP Server 2.4.41 to 2.4.46
mod_proxy_http can be made to crash (NULL pointer dereference) with specially crafted requests using both Content-Length and Transfer-Encoding headers, leading to a Denial of Service

Mitigation:
None

Credit:
Reported by Marc Stern (<marc.stern approach.be>)

References:
https://httpd.apache.org/security/vulnerabilities_24.html

