Received: (qmail 11944 invoked by uid 550); 14 Jun 2025 23:24:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32636 invoked from network); 14 Jun 2025 22:48:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tomasz Cedro <cederom@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <06e3d634-5f7f-13a2-fc5f-5cb12f7c287f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 14 Jun 2025 22:47:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-47868: Apache NuttX RTOS: tools/bdf-converter.:
 tools/bdf-converter: Fix loop termination condition. 

Severity: low=20

Affected versions:

- Apache NuttX RTOS: tools/bdf-converter. 6.9 before 12.9.0

Description:

Out-of-bounds Write resulting in possible Heap-based Buffer Overflow vulner=
ability was discovered in tools/bdf-converter font conversion utility that =
is part of Apache NuttX RTOS repository. This standalone program is optiona=
l and neither part of NuttX RTOS nor Applications runtime, but active bdf-c=
onverter users may be affected when this tool is exposed to external provid=
ed user data data (i.e. publicly available automation).

This issue affects Apache NuttX: from 6.9 before 12.9.0.

Users are recommended to upgrade to version 12.9.0, which fixes the issue.

Credit:

Ch=C3=A1nh Ph=E1=BA=A1m <chanhphamviet@gmail.com> (finder)
Nathan Hartman <hartman.nathan@gmail.com> (remediation developer)
Tomek CEDRO <tomek@cedro.info> (coordinator)
Alan Carvalho de Assis <acassis@gmail.com> (remediation reviewer)
Alin Jerpelea <jerpelea@gmail.com> (remediation reviewer)
Lee, Lup Yuen <luppy@appkaki.com> (remediation reviewer)
Arnout Engelen <engelen@apache.org> (coordinator)

References:

https://github.com/apache/nuttx/pull/16000
https://nuttx.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-47868

