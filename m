X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["730" "Thursday" "7" "October" "2021" "15:24:32" "+0000" "Stefan Eissing" "icing@apache.org" nil "21" "[oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773) " nil nil nil "10" nil nil (number mark "U       icing@apache Oct  7   21/730   " thread-indent "\"[oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773) \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773) " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13760 invoked by uid 550); 7 Oct 2021 15:33:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8081 invoked from network); 7 Oct 2021 15:24:45 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a2cd6ccf-b381-5513-3c7c-598a6da8c9c9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Oct 2021 15:24:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-42013: Path Traversal and Remote Code Execution in Apache
 HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773) 

Severity: critical

Description:

It was found that the fix for CVE-2021-41773 in Apache HTTP Server 2.4.50 w=
as insufficient. An attacker could use a path traversal attack to map URLs =
to files outside the directories configured by Alias-like directives.=20=20

If files outside of these directories are not protected by the usual defaul=
t configuration "require all denied", these requests can succeed. If CGI sc=
ripts are also enabled for these aliased pathes, this could allow for remot=
e code execution.

This issue only affects Apache 2.4.49 and Apache 2.4.50 and not earlier ver=
sions.

Credit:

Reported by Juan Escobar from Dreamlab Technologies, Fernando Mu=C3=B1oz fr=
om NULL Life CTF Team, and Shungo Kumasaka

