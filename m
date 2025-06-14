Received: (qmail 13548 invoked by uid 550); 14 Jun 2025 23:24:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20189 invoked from network); 14 Jun 2025 22:51:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tomasz Cedro <cederom@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9bb61cb7-46ac-22ab-d2a8-90f5f7102588@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 14 Jun 2025 22:47:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-47869: Apache NuttX RTOS: examples/xmlrpc: Fix calls
 buffers size. 

Severity: low=20

Affected versions:

- Apache NuttX RTOS 6.22 before 12.9.0

Description:

Improper Restriction of Operations within the Bounds of a Memory Buffer vul=
nerability was discovered in Apache NuttX RTOS apps/exapmles/xmlrpc applica=
tion. In this example application device stats structure that stored remote=
ly provided parameters had hardcoded buffer size which could lead to buffer=
 overflow. Structure members buffers were updated to valid size of CONFIG_X=
MLRPC_STRINGSIZE+1.

This issue affects Apache NuttX RTOS users that may have used or base their=
 code on example application as presented in releases from 6.22 before 12.9=
.0.

Users of XMLRPC in Apache NuttX RTOS are advised to review their code=20
for this pattern and update buffer sizes as presented in the version of=20
the example in release 12.9.0.

Credit:

Ch=C3=A1nh Ph=E1=BA=A1m <chanhphamviet@gmail.com> (reporter)
Arnout Engelen <engelen@apache.org> (remediation developer)
Tomek CEDRO <tomek@cedro.info> (coordinator)
Alan Carvalho de Assis <acassis@gmail.com> (remediation reviewer)
Alin Jerpelea <jerpelea@gmail.com> (remediation reviewer)
Lee, Lup Yuen <luppy@appkaki.com> (remediation reviewer)
Xiang Xiao <xiaoxiang781216@gmail.com> (remediation reviewer)
JianyuWang <wangjianyu3@xiaomi.com> (remediation reviewer)

References:

https://github.com/apache/nuttx-apps/pull/3027
https://nuttx.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-47869

