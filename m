Received: (qmail 7675 invoked by uid 550); 6 Apr 2026 13:26:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26341 invoked from network); 6 Apr 2026 13:08:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e2c9c403-b54a-2b0b-5208-c1bfb03fdcce@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Apr 2026 13:07:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34197: Apache ActiveMQ Broker, Apache ActiveMQ:
 Authenticated users could perform RCE via Jolokia MBeans 

Severity: important=20

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.4
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before=
 6.2.3
- Apache ActiveMQ (org.apache.activemq:activemq-all) before 5.19.4
- Apache ActiveMQ (org.apache.activemq:activemq-all) 6.0.0 before 6.2.3

Description:

Improper Input Validation, Improper Control of Generation of Code ('Code In=
jection') vulnerability in Apache ActiveMQ Broker, Apache ActiveMQ.

Apache ActiveMQ Classic exposes the Jolokia JMX-HTTP bridge at=C2=A0/api/jo=
lokia/ on the web console. The default Jolokia access policy permits=C2=A0e=
xec operations on all ActiveMQ=C2=A0MBeans (org.apache.activemq:*), includi=
ng
BrokerService.addNetworkConnector(String) and BrokerService.addConnector(St=
ring).=20

An authenticated attacker can=C2=A0invoke these operations with a crafted d=
iscovery URI that triggers the VM=C2=A0transport's brokerConfig parameter t=
o load a remote Spring XML application=C2=A0context using ResourceXmlApplic=
ationContext.=20
Because Spring's=C2=A0ResourceXmlApplicationContext instantiates all single=
ton beans before the=C2=A0BrokerService validates the configuration, arbitr=
ary code execution occurs=C2=A0on the broker's JVM through bean factory met=
hods such as Runtime.exec().
This issue affects Apache ActiveMQ Broker: before 5.19.4, from 6.0.0 before=
 6.2.3; Apache ActiveMQ: .

Users are recommended to upgrade to version 5.19.5 or 6.2.3, which fixes th=
e issue.

Credit:

Naveen Sunkavally (Horizon3.ai) (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34197

