X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["411" "Friday" "7" "August" "2020" "06:31:38" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<1596799898.GKATVRZF@httpd.apache.org>" "23" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil "8" "2020080711:31:38" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "U       druggeri@apa Aug  7   23/411   " thread-indent "\"[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13554 invoked by uid 550); 7 Aug 2020 11:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5967 invoked from network); 7 Aug 2020 11:43:56 -0000
From: Daniel Ruggeri <druggeri@apache.org>
To: oss-security@lists.openwall.com
Date: Fri, 07 Aug 2020 06:31:38 -0500
Message-ID: <1596799898.GKATVRZF@httpd.apache.org>
Subject: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow


CVE-2020-11984: mod_uwsgi buffer overlow

Severity: moderate

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.32 to 2.4.44

Description:
Apache HTTP Server 2.4.32 to 2.4.44
mod_proxy_uwsgi info disclosure and possible RCE
    
Mitigation:
disable mod_uwsgi

Credit:
Discovered by Felix Wilhelm of Google Project Zero

References:
https://httpd.apache.org/security/vulnerabilities_24.html

