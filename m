X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["710" "Tuesday" "5" "October" "2021" "09:03:14" "+0000" "Stefan Eissing" "icing@apache.org" nil "24" "[oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 " nil nil nil "10" nil nil (number mark "U       icing@apache Oct  5   24/710   " thread-indent "\"[oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26155 invoked by uid 550); 5 Oct 2021 11:54:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15984 invoked from network); 5 Oct 2021 09:03:38 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <11be742f-d8d0-2a6b-2ea0-dabbdeafebad@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 Oct 2021 09:03:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41773: Path traversal and file disclosure vulnerability
 in Apache HTTP Server 2.4.49 

Severity: important

Description:

A flaw was found in a change made to path normalization in Apache HTTP Serv=
er 2.4.49. An attacker could use a path traversal attack to map URLs to fil=
es outside the expected document root.=20=20

If files outside of the document root are not protected by "require all den=
ied" these requests can succeed. Additionally this flaw could leak the sour=
ce of interpreted files like CGI scripts.

This issue is known to be exploited in the wild.

This issue only affects Apache 2.4.49 and not earlier versions.=20=20

Credit:

This issue was reported by Ash Daulton along with the cPanel Security Team

References:

https://httpd.apache.org/security/vulnerabilities_24.html

