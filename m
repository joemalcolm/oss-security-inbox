X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["342" "Friday" "15" "October" "2021" "13:02:54" "+0000" "Daniel Gaspar" "dpgaspar@apache.org" nil "12" "[oss-security] CVE-2021-32609: Apache Superset: XSS vulnerability on Explore page" nil nil nil "10" nil nil (number mark "U       dpgaspar@apa Oct 15   12/342   " thread-indent "\"[oss-security] CVE-2021-32609: Apache Superset: XSS vulnerability on Explore page\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-32609: Apache Superset: XSS vulnerability on Explore page" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <xzEIyx8JLyaR>
Received: (qmail 9722 invoked by uid 550); 15 Oct 2021 13:04:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9402 invoked from network); 15 Oct 2021 13:03:07 -0000
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <92d6d5d6-bee4-aa21-96f5-d1a5975b6eb5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Oct 2021 13:02:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-32609: Apache Superset: XSS vulnerability on Explore page

Description:

Apache Superset up to and including 1.1 does not sanitize titles correctly =
on the Explore page. This allows an attacker with Explore access to save a =
chart with a malicious title, injecting html (including scripts) into the p=
age.

Credit:

Apache Superset team would like to thank Oscar Arnflo for reporting this is=
sue

