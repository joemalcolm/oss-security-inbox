Received: (qmail 22384 invoked by uid 550); 31 May 2026 17:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1034 invoked from network); 31 May 2026 16:18:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ea2a1972-503d-1eae-fb4c-422d6985bfc8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 16:17:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42588: Apache ActiveMQ Broker, Apache ActiveMQ All,
 Apache ActiveMQ: Remote Code Execution via Jolokia addNetworkConnector 

Severity: important=20

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.7
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before=
 6.2.6
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.7
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.6
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.7
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.6

Description:

Improper Input Validation, Improper Control of Generation of Code ('Code In=
jection') vulnerability in Apache ActiveMQ Broker, Apache ActiveMQ All, Apa=
che ActiveMQ.

Apache ActiveMQ Classic exposes the Jolokia JMX-HTTP bridge at /api/jolokia=
/ on the web console. The default Jolokia access policy permits exec operat=
ions on all ActiveMQ MBeans (org.apache.activemq:*), including
BrokerService.addNetworkConnector(String).

An authenticated attacker can invoke these operations with a crafted discov=
ery URI that triggers the VM transport's brokerConfig parameter using the "=
masterslave:// " URL which can allow loading a=C2=A0Spring XML application =
context using ResourceXmlApplicationContext.
Because Spring's ResourceXmlApplicationContext instantiates all singleton b=
eans before the BrokerService validates the configuration, arbitrary code e=
xecution occurs on the broker's JVM through bean factory methods such as Ru=
ntime.exec().
This issue affects Apache ActiveMQ Broker: before 5.19.7, from 6.0.0 before=
 6.2.6; Apache ActiveMQ All: before 5.19.7, from 6.0.0 before 6.2.6; Apache=
 ActiveMQ: before 5.19.7, from 6.0.0 before 6.2.6.

Users are recommended to upgrade to version 5.19.7 or 6.2.6, which fixes th=
e issue.

Credit:

pyn3rd (finder)
uname (finder)
4ra1n (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42588

