Received: (qmail 1555 invoked by uid 550); 6 May 2025 15:37:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30442 invoked from network); 6 May 2025 15:36:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <634804f0-64ed-12c9-2824-eabfe49bd575@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 06 May 2025 15:33:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27533: Apache ActiveMQ: Unchecked buffer length can cause
 excessive memory allocation 

Affected versions:

- Apache ActiveMQ 6.0.0 before 6.1.6
- Apache ActiveMQ 5.18.0 before 5.18.7
- Apache ActiveMQ 5.17.0 before 5.17.7
- Apache ActiveMQ 5.16.0 before 5.16.8

Description:

Memory Allocation with Excessive Size Value vulnerability in Apache ActiveM=
Q.

During unmarshalling of OpenWire commands the size value of buffers was not=
 properly validated which could lead to excessive memory allocation and be =
exploited to cause a denial of service (DoS) by depleting process memory, t=
hereby affecting applications and services that rely on the availability of=
 the ActiveMQ broker when not using mutual TLS connections.
This issue affects Apache ActiveMQ: from 6.0.0 before 6.1.6, from 5.18.0 be=
fore 5.18.7, from 5.17.0 before 5.17.7, before 5.16.8. ActiveMQ 5.19.0 is n=
ot affected.

Users are recommended to upgrade to version 6.1.6+, 5.19.0+,  5.18.7+, 5.17=
.7, or 5.16.8 or which fixes the issue.

Existing users may implement mutual TLS to mitigate the risk on affected br=
okers.

This issue is being tracked as AMQ-6596=20

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27533
https://issues.apache.org/jira/browse/AMQ-6596

