Received: (qmail 26177 invoked by uid 550); 31 Dec 2025 19:54:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5317 invoked from network); 31 Dec 2025 13:47:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tomasz Cedro <cederom@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5afedf3c-8c4a-a753-d75a-bfbaeec0550a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 31 Dec 2025 13:46:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48768: Apache NuttX RTOS: fs/inode: fs_inoderemove root
 inode removal 

Severity: low=20

Affected versions:

- Apache NuttX RTOS 10.0.0 before 12.10.0

Description:

Release of Invalid Pointer or Reference vulnerability was discovered in=C2=
=A0fs/inode/fs_inoderemove=C2=A0code of the Apache NuttX RTOS that allowed =
root filesystem inode removal leading to a debug assert trigger (that is di=
sabled by default), NULL pointer dereference (handled differently depending=
 on the target architecture), or in general, a Denial of Service.

This issue affects Apache NuttX RTOS: from 10.0.0 before 12.10.0.

Users of filesystem based services with write access that were exposed over=
 the network (i.e. FTP) are affected and recommended to upgrade to version =
12.10.0 that fixes the issue.

Credit:

Liu, Richard Jiayang <rjliu3@illinois.edu> (finder)
Liu, Richard Jiayang <rjliu3@illinois.edu> (remediation developer)
Alan Carvalho de Assis <acassis@apache.org> (remediation reviewer)
Tomek CEDRO <cederom@apache.org> (coordinator)
Xiang Xiao <xiaoxiang@apache.org> (remediation reviewer)
Jiuzhu Dong <jiuzhudong@apache.org> (remediation reviewer)

References:

https://github.com/apache/nuttx/pull/16437
https://nuttx.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-48768

