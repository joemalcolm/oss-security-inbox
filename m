X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["846" "Tuesday" "15" "March" "2022" "15:17:33" "+0000" "Daan" "dahn@apache.org" nil "23" "[oss-security] CVE-2022-26779: Apache Cloudstack insecure random number generation affects project email invitation " nil nil nil "3" nil nil (number mark "U       dahn@apache. Mar 15   23/846   " thread-indent "\"[oss-security] CVE-2022-26779: Apache Cloudstack insecure random number generation affects project email invitation \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-26779: Apache Cloudstack insecure random number generation affects project email invitation " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3773 invoked by uid 550); 15 Mar 2022 16:25:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5612 invoked from network); 15 Mar 2022 15:17:46 -0000
Content-Type: text/plain; charset=utf-8
From: Daan <dahn@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <472d9cd6-7a65-5871-043c-930b966c49cc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Mar 2022 15:17:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-26779: Apache Cloudstack insecure random number
 generation affects project email invitation 

Severity: low

Description:

Apache CloudStack prior to 4.16.1.0 used insecure random number generation =
for project invitation tokens. If a project invite is created based only on=
 an email address, a random token is generated. An attacker with knowledge =
of the project ID and the fact that the invite is sent, could generate time=
 deterministic tokens and brute force attempt to use them prior to the legi=
timate receiver accepting the invite. This feature is not enabled by defaul=
t, the attacker is required to know or guess the project ID for the invite =
in addition to the invitation token, and the attacker would need to be an e=
xisting authorized user of CloudStack.

Credit:

This issue was reported by Jonathan Leitschuh

References:

https://github.com/JLLeitschuh/security-research/security/advisories/GHSA-v=
pcc-9rh2-8jfp

