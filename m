Received: (qmail 1971 invoked by uid 550); 15 Oct 2025 22:23:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12205 invoked from network); 15 Oct 2025 22:08:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Krzysztof_Por=C4=99bski?= <havret@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9c174b7a-d9cb-da38-40b9-ad05152550e6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Oct 2025 22:08:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54539: Apache ActiveMQ NMS AMQP Client: Deserialization
 of Untrusted Data 

Severity: important=20

Affected versions:

- Apache ActiveMQ NMS AMQP Client through 2.3.0

Description:

A Deserialization of Untrusted Data vulnerability exists in the Apache Acti=
veMQ NMS AMQP Client.

This issue affects all versions of Apache ActiveMQ NMS AMQP up to and inclu=
ding 2.3.0, when establishing connections to untrusted AMQP servers. Malici=
ous servers could exploit unbounded deserialization logic present in the cl=
ient to craft responses that may lead to arbitrary code execution on the cl=
ient side.

Although version 2.1.0 introduced a mechanism to restrict deserialization v=
ia allow/deny lists, the protection was found to be bypassable under certai=
n conditions.

In line with Microsoft=E2=80=99s deprecation of binary serialization in .NE=
T 9, the project is evaluating the removal of .NET binary serialization sup=
port from the NMS API entirely in future releases.

Mitigation and Recommendations:
Users are strongly encouraged to upgrade to version 2.4.0 or later, which r=
esolves the issue. Additionally, projects depending on NMS-AMQP should migr=
ate away from .NET binary serialization as part of a long-term hardening st=
rategy.

Credit:

Security Research Team @ Endor Labs (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54539

