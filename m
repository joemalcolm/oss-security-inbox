Received: (qmail 26533 invoked by uid 550); 31 Dec 2025 19:54:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18310 invoked from network); 31 Dec 2025 13:49:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tomasz Cedro <cederom@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d79af7d6-b4de-d582-eee5-e57afcf83b9d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 31 Dec 2025 13:48:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48769: Apache NuttX RTOS: fs/vfs/fs_rename: use after
 free 

Severity: moderate=20

Affected versions:

- Apache NuttX RTOS 7.20 before 12.11.0

Description:

Use After Free vulnerability was discovered in fs/vfs/fs_rename code of the=
 Apache NuttX RTOS, that due recursive implementation and single buffer use=
 by two different pointer variables allowed arbitrary user provided size bu=
ffer reallocation and write to the previously freed heap chunk, that in spe=
cific cases could cause unintended virtual filesystem rename/move operation=
 results.

This issue affects Apache NuttX RTOS: from 7.20 before 12.11.0.

Users of virtual filesystem based services with write access especially whe=
n exposed over the network (i.e. FTP) are affected and recommended to upgra=
de to version 12.11.0 that fixes the issue.

Credit:

Liu, Richard Jiayang <rjliu3@illinois.edu> (finder)
Liu, Richard Jiayang <rjliu3@illinois.edu> (remediation developer)
Tomek CEDRO <cederom@apache.org> (coordinator)
Xiang Xiao <xiaoxiang@apache.org> (remediation reviewer)
Jiuzhu Dong <jiuzhudong@apache.org> (remediation reviewer)

References:

https://github.com/apache/nuttx/pull/16455
https://nuttx.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-48769

