Received: (qmail 9457 invoked by uid 550); 18 Apr 2025 15:38:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3997 invoked from network); 18 Apr 2025 15:22:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <84a07a1a-a9aa-84d3-01a1-67641ee2ea85@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 18 Apr 2025 15:22:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-29953: Apache ActiveMQ NMS OpenWire Client:
 deserialization allowlist bypass 

Severity: moderate

Affected versions:

- Apache ActiveMQ NMS OpenWire Client before 2.1.1

Description:

Deserialization of Untrusted Data vulnerability in Apache ActiveMQ NMS Open=
Wire Client.

This issue affects Apache ActiveMQ NMS OpenWire Client before 2.1.1 when pe=
rforming connections to untrusted servers. Such servers could abuse the unb=
ounded deserialization in the client to provide malicious responses that ma=
y eventually cause arbitrary code execution on the client. Version 2.1.0 in=
troduced a allow/denylist feature to restrict deserialization, but this fea=
ture could be bypassed.

The .NET team has deprecated the built-in .NET binary serialization feature=
 starting with .NET 9 and suggests migrating away from binary serialization=
. The project is considering to follow suit and drop this part of the NMS A=
PI altogether.

Users are recommended to upgrade to version 2.1.1, which fixes the issue. W=
e also recommend to migrate away from relying on .NET binary serialization =
as a hardening method for the future.

This issue is being tracked as AMQNET-844=20

Credit:

g7shot working with Trend Zero Day Initiative (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-29953
https://issues.apache.org/jira/browse/AMQNET-844

