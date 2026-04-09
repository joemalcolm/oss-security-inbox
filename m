Received: (qmail 30387 invoked by uid 550); 9 Apr 2026 15:37:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20420 invoked from network); 9 Apr 2026 12:42:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bedc23a3-74fc-5137-870a-de773c639e9b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 12:42:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-39304: Apache ActiveMQ Client, Apache ActiveMQ Broker,
 Apache ActiveMQ All, Apache ActiveMQ: Incorrect handling of TLSv1.3
 KeyUpdate can be exploited to cause DoS via OOM 

Severity: important=20

Affected versions:

- Apache ActiveMQ Client (org.apache.activemq:activemq-client) before 5.19.4
- Apache ActiveMQ Client (org.apache.activemq:activemq-client) 6.0.0 before=
 6.2.4
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.4
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before=
 6.2.4
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.4
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.4
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.4
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.4

Description:

Denial of Service via Out of Memory vulnerability in Apache ActiveMQ Client=
, Apache ActiveMQ Broker, Apache ActiveMQ.

ActiveMQ NIO SSL transports do not correctly handle TLSv1.3 handshake KeyUp=
dates triggered by clients. This makes it possible for a client to rapidly =
trigger updates which causes the broker to exhaust all its memory in the SS=
L engine leading to DoS.

Note: TLS versions before TLSv1.3 (such as TLSv1.2) are broken but are not =
vulnerable to OOM. Previous TLS versions require a full handshake renegotia=
tion which causes a connection to hang but not OOM. This is fixed as well.
This issue affects Apache ActiveMQ Client: before 5.19.4, from 6.0.0 before=
 6.2.4; Apache ActiveMQ Broker: before 5.19.4, from 6.0.0 before 6.2.4; Apa=
che ActiveMQ: before 5.19.4, from 6.0.0 before 6.2.4.

Users are recommended to upgrade to version 6.2.4 or 5.19.5, which fixes th=
e issue.

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-39304

