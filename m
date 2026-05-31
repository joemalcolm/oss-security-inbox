Received: (qmail 24569 invoked by uid 550); 31 May 2026 17:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3689 invoked from network); 31 May 2026 16:18:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f9ee015b-2b16-4ec0-e653-dcc4aa6ed12f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 16:17:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45505: Apache ActiveMQ Broker, Apache ActiveMQ All,
 Apache ActiveMQ: Jolokia `addNetworkConnector` Discovery Wrapper Bypass 

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


Non-parenthesized discovery wrappers such as `masterslave:vm://...,...`
and `static:vm://...` incorrectly pass validation allowing bypass of fix in=
=C2=A0CVE-2026-34197.=C2=A0

Original description from=C2=A0CVE-2026-34197.

Apache ActiveMQ exposes the Jolokia JMX-HTTP bridge at /api/jolokia/ on the=
 web console. The default Jolokia access policy permits exec operations on =
all ActiveMQ MBeans (org.apache.activemq:*), including BrokerService.addNet=
workConnector(String) and BrokerService.addConnector(String).=C2=A0An authe=
nticated attacker can invoke these operations with a crafted discovery UR t=
hat triggers the VM transport's brokerConfig parameter to load a remote Spr=
ing XML application context using ResourceXmlApplicationContext. Because Sp=
ring's ResourceXmlApplicationContext instantiates all singleton beans befor=
e the BrokerService validates the configuration, arbitrary code execution o=
ccurs on the broker's JVM through bean factory methods such as Runtime.exec=
().=20
This issue affects Apache ActiveMQ Broker: before 5.19.7, from 6.0.0 before=
 6.2.6; Apache ActiveMQ All: before 5.19.7, from 6.0.0 before 6.2.6; Apache=
 ActiveMQ: before 5.19.7, from 6.0.0 before 6.2.6.

Users are recommended to upgrade to version 5.19.7 or 6.2.6, which fixes th=
e issue.

Credit:

lokerxx (finder)

References:

https://nvd.nist.gov/vuln/detail/CVE-2026-34197
https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45505

