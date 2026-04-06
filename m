Received: (qmail 10108 invoked by uid 550); 6 Apr 2026 13:26:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26393 invoked from network); 6 Apr 2026 13:08:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bf0d6b16-01de-4249-1f8c-0daccf102f14@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Apr 2026 13:07:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33227: Apache ActiveMQ Client, Apache ActiveMQ Broker,
 Apache ActiveMQ, Apache ActiveMQ Web: Improper Limitation of a Pathname to
 a Restricted Directory 

Severity: low=20

Affected versions:

- Apache ActiveMQ Client (org.apache.activemq:activemq-client) before 5.19.3
- Apache ActiveMQ Client (org.apache.activemq:activemq-client) 6.0.0 before=
 6.2.2
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.3
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before=
 6.2.2
- Apache ActiveMQ (org.apache.activemq:activemq-all) before 5.19.3
- Apache ActiveMQ (org.apache.activemq:activemq-all) 6.0.0 before 6.2.2
- Apache ActiveMQ Web (org.apache.activemq:activemq-web) before 5.19.3
- Apache ActiveMQ Web (org.apache.activemq:activemq-web) 6.0.0 before 6.2.2

Description:

Improper validation and restriction of a classpath path name vulnerability =
in Apache ActiveMQ Client, Apache ActiveMQ Broker, Apache ActiveMQ All.

In two instances (when creating a Stomp consumer and also browsing messages=
 in the Web console) an authenticated user provided "key" value could be co=
nstructed to traverse the classpath due to path concatenation. As a result,=
 the application is exposed to a classpath path resource loading vulnerabil=
ity that could potentially be chained together with another attack to lead =
to exploit.This issue affects Apache ActiveMQ Client: before 5.19.3, from 6=
.0.0 before 6.2.2; Apache ActiveMQ Broker: before 5.19.3, from 6.0.0 before=
 6.2.2; Apache ActiveMQ All: before 5.19.3, from 6.0.0 before 6.2.2.

Users are recommended to upgrade to version 5.19.4 or 6.2.3, which fixes th=
e issue. Note: 5.19.3 and 6.2.2 also fix this issue, but that is limited to=
 non-Windows environments due to a path separator resolution bug fixed in 5=
.19.4 and 6.2.3.

Credit:

Dawei Wang (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33227

