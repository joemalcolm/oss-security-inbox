X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["751" "Wednesday" "9" "June" "2021" "23:11:00" "+0200" "Christophe JAILLET" "jailletc36@apache.org" nil "23" "[oss-security] CVE-2019-17567: Apache httpd: mod_proxy_wstunnel tunneling of non Upgraded connections" nil nil nil "6" nil nil (number mark "U       jailletc36@a Jun  9   23/751   " thread-indent "\"[oss-security] CVE-2019-17567: Apache httpd: mod_proxy_wstunnel tunneling of non Upgraded connections\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-17567: Apache httpd: mod_proxy_wstunnel tunneling of non Upgraded connections" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7885 invoked by uid 550); 10 Jun 2021 11:44:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28195 invoked from network); 9 Jun 2021 21:18:03 -0000
From: Christophe JAILLET <jailletc36@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Jun 2021 23:11:00 +0200
Message-ID: <1622544225.CLGKNUAI@httpd.apache.org>
Subject: [oss-security] CVE-2019-17567: Apache httpd: mod_proxy_wstunnel tunneling of non Upgraded connections


CVE-2019-17567: mod_proxy_wstunnel tunneling of non Upgraded connections

Severity: moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.6 to 2.4.46

Description:
Apache HTTP Server 2.4.6 to 2.4.46
mod_proxy_wstunnel configured on an URL that is not necessarily Upgraded by the origin server was tunneling the whole connection regardless, thus allowing for subsequent requests on the same connection to pass through with no HTTP validation, authentication or authorization possibly configured.
    
Mitigation:
Configure mod_proxy_wstunnel on URLs that are always Upgraded by the origin server

Credit:
Reported by Mikhail Egorov (<0ang3el gmail.com>)

References:
https://httpd.apache.org/security/vulnerabilities_24.html

