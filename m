Received: (qmail 30056 invoked by uid 550); 31 May 2026 17:02:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22475 invoked from network); 31 May 2026 16:23:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9f1296ff-7fcd-d2d2-72e5-4e7ef2bad1c4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 16:18:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-49270: Apache ActiveMQ Broker, Apache ActiveMQ, Apache
 ActiveMQ All: Durable Subscription Disclosure via Crafted BrokerInfo
 (OpenWire) 

Severity: moderate=20

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 5.14.0 befor=
e 5.19.7
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before=
 6.2.6
- Apache ActiveMQ (org.apache.activemq:activemq-all) 5.14.0 before 5.19.7
- Apache ActiveMQ (org.apache.activemq:activemq-all) 6.0.0 before 6.2.6
- Apache ActiveMQ All (org.apache.activemq:apache-activemq) 5.14.0 before 5=
.19.7
- Apache ActiveMQ All (org.apache.activemq:apache-activemq) 6.0.0 before 6.=
2.6

Description:

Exposure of Sensitive Information Through Metadata vulnerability in Apache =
ActiveMQ Broker, Apache ActiveMQ, Apache ActiveMQ All.

Brokers that are configured with a network connector with syncDurableSubs s=
et to true, are vulnerable to an unauthenticated attacker who can receive a=
 list of all durable topic subscriptions in the broker,=C2=A0including clie=
nt identifiers, subscription names, topic destinations, and=C2=A0JMS select=
or expressions, by sending a BrokerInfo command. The broker incorrectly res=
ponds without first ensuring the connection is authenticated.
This issue affects Apache ActiveMQ Broker: before 5.19.7, from 6.0.0 before=
 6.2.6; Apache ActiveMQ: before 5.19.7, from 6.0.0 before 6.2.6; Apache Act=
iveMQ All: before 5.19.7, from 6.0.0 before 6.2.6.

Users are recommended to upgrade to version 6.2.6 or 5.19.7, which fixes th=
e issue.

Credit:

Basel Khaled (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-49270

