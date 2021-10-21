X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["631" "Thursday" "21" "October" "2021" "03:02:08" "+0000" "Derek Dagit" "dagit@apache.org" nil "20" "[oss-security] CVE-2021-38294: Apache Storm: Shell Command Injection Vulnerability in Nimbus Thrift Server " nil nil nil "10" nil nil (number mark "U       dagit@apache Oct 21   20/631   " thread-indent "\"[oss-security] CVE-2021-38294: Apache Storm: Shell Command Injection Vulnerability in Nimbus Thrift Server \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-38294: Apache Storm: Shell Command Injection Vulnerability in Nimbus Thrift Server " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7736 invoked by uid 550); 21 Oct 2021 09:05:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26558 invoked from network); 21 Oct 2021 03:02:23 -0000
Content-Type: text/plain; charset=utf-8
From: Derek Dagit <dagit@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c61a63b1-3370-9ced-d672-d2c6a6f91c94@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Oct 2021 03:02:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-38294: Apache Storm: Shell Command Injection
 Vulnerability in Nimbus Thrift Server 

Severity: high

Description:

A Command Injection vulnerability exists in the getTopologyHistory service =
of the Apache Storm 2.x prior to 2.2.1 and Apache Storm 1.x prior to 1.2.4.=
 A specially crafted thrift request to the Nimbus server allows Remote Code=
 Execution (RCE) prior to authentication.=20

Mitigation:

Apache Storm 2.2.x users should upgrade to version 2.2.1 or 2.3.0
Apache Storm 2.1.x users should upgrade to version 2.1.1
Apache Storm 1.x users should upgrade to version 1.2.4

Credit:

Apache Storm would like to thank @pwntester Alvaro Mu=C3=B1oz of the GitHub=
 Security Lab team for reporting this issue.

