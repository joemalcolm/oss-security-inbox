Received: (qmail 29935 invoked by uid 550); 26 May 2025 00:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20046 invoked from network); 26 May 2025 00:27:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tomasz Cedro <cederom@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <650e8aac-e317-d29a-a7a8-b3db99eeecb1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 May 2025 00:27:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-35003: Apache NuttX RTOS: NuttX Bluetooth Stack HCI and
 UART DoS/RCE Vulnerabilities. 

Severity: important

Affected versions:

- Apache NuttX RTOS 7.25 before 12.9.0

Description:

Improper Restriction of Operations within the Bounds of a Memory Buffer and=
 Stack-based Buffer Overflow vulnerabilities were discovered in Apache Nutt=
X RTOS Bluetooth Stack (HCI and UART components) that may result in system =
crash, denial of service, or arbitrary code execution, after receiving mali=
ciously crafted packets.

NuttX's Bluetooth HCI/UART stack users are advised to upgrade to version 12=
.9.0, which fixes the identified implementation issues.

This issue affects Apache NuttX: from 7.25 before 12.9.0.

Credit:

Chongqing Lei <leicq@seu.edu.cn> (reporter)
Zhen Ling <zhenling@seu.edu.cn> (reporter)
Chongqing Lei <leicq@seu.edu.cn> (remediation developer)

References:

https://github.com/apache/nuttx/pull/16179
https://nuttx.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-35003

