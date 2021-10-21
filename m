X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["699" "Thursday" "21" "October" "2021" "03:03:02" "+0000" "Derek Dagit" "dagit@apache.org" nil "21" "[oss-security] CVE-2021-40865: Apache Storm: Unsafe Pre-Authentication Deserialization In Workers " nil nil nil "10" nil nil (number mark "U       dagit@apache Oct 21   21/699   " thread-indent "\"[oss-security] CVE-2021-40865: Apache Storm: Unsafe Pre-Authentication Deserialization In Workers \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-40865: Apache Storm: Unsafe Pre-Authentication Deserialization In Workers " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8005 invoked by uid 550); 21 Oct 2021 09:05:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27790 invoked from network); 21 Oct 2021 03:03:14 -0000
Content-Type: text/plain; charset=utf-8
From: Derek Dagit <dagit@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <22af59a3-7ad6-cb3d-4622-db73c8f48539@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Oct 2021 03:03:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-40865: Apache Storm: Unsafe Pre-Authentication
 Deserialization In Workers 

Severity: high

Description:

An Unsafe Deserialization vulnerability exists in the worker services of th=
e Apache Storm supervisor server allowing pre-auth Remote Code Execution (R=
CE).  Apache Storm 2.2.x users should upgrade to version 2.2.1 or 2.3.0. Ap=
ache Storm 2.1.x users should upgrade to version 2.1.1. Apache Storm 1.x us=
ers should upgrade to version 1.2.4

Mitigation:

Apache Storm 2.2.x users should upgrade to version 2.2.1 or 2.3.0
Apache Storm 2.1.x users should upgrade to version 2.1.1
Apache Storm 1.x users should upgrade to version 1.2.4

Credit:

Apache Storm would like to thank @pwntester Alvaro Mu=C3=B1oz of the GitHub=
 Security Lab team for reporting this issue.

