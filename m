X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["410" "Sunday" "4" "July" "2021" "12:50:26" "+0000" "Andy Seaborne" "andy@apache.org" nil "16" "[oss-security] CVE-2021-33192: Apache Jena Fuseki: Display information UI XSS " nil nil nil "7" nil nil (number mark "U       andy@apache. Jul  4   16/410   " thread-indent "\"[oss-security] CVE-2021-33192: Apache Jena Fuseki: Display information UI XSS \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33192: Apache Jena Fuseki: Display information UI XSS " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7517 invoked by uid 550); 4 Jul 2021 15:44:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25850 invoked from network); 4 Jul 2021 12:50:47 -0000
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <14378199-be13-16b2-fd4e-c57b92064820@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 04 Jul 2021 12:50:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-33192: Apache Jena Fuseki: Display information UI XSS 

Severity: Medium

Description:

A vulnerability in the HTML pages of Apache Jena Fuseki allows an attacker =
to execute arbitrary javascript on certain page views.  This issue affects =
Apache Jena Fuseki from version 2.0.0 to version 4.0.0 (inclusive).

Mitigation:

Users are advised to upgrade to Apache Jena 4.1.0 or later.

Credit:

Apache Jena would like to thank Luka Safonov for reporting this issue.

