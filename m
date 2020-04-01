X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["517" "Wednesday" "1" "April" "2020" "07:54:12" "-0500" "Daniel Ruggeri" "druggeri@apache.org" nil "24" nil "^Date:" nil nil "4" nil nil (number mark "U       druggeri@apa Apr  1   24/517   " thread-indent "\"[oss-security] CVE-2020-1934: mod_proxy_ftp use of uninitialized value\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1934: mod_proxy_ftp use of uninitialized value" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1078 invoked by uid 550); 1 Apr 2020 13:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11265 invoked from network); 1 Apr 2020 12:58:56 -0000
Message-ID: <1585745652.NZ0EOPOJ@httpd.apache.org>
Date: Wed, 01 Apr 2020 07:54:12 -0500
From: Daniel Ruggeri <druggeri@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-1934: mod_proxy_ftp use of uninitialized value
To: oss-security@lists.openwall.com


CVE-2020-1934: mod_proxy_ftp use of uninitialized value

Severity: low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.0-2.4.41

Description:
Apache HTTP Server 2.4.0 to 2.4.41
mod_proxy_ftp may use uninitialized memory when proxying to a malicious
FTP server.
    
Mitigation:
Don't proxy to untrusted FTP servers prior to applying the fix.

Credit:
The issue was discovered by Chamal De Silva <chamal.desilva@gmail.com>

References:
https://httpd.apache.org/security/vulnerabilities_24.html

