Received: (qmail 28362 invoked by uid 550); 27 Oct 2023 14:58:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20245 invoked from network); 27 Oct 2023 14:45:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <02573012-9cb8-a624-f621-982539a936ef@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 27 Oct 2023 14:44:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46604: Apache ActiveMQ, Apache ActiveMQ Legacy OpenWire
 Module: Unbounded deserialization causes ActiveMQ to be vulnerable to a
 remote code execution (RCE) attack 

Affected versions:

- Apache ActiveMQ 5.18.0 before 5.18.3
- Apache ActiveMQ 5.17.0 before 5.17.6
- Apache ActiveMQ 5.16.0 before 5.16.7
- Apache ActiveMQ before 5.15.16
- Apache ActiveMQ Legacy OpenWire Module 5.18.0 before 5.18.3
- Apache ActiveMQ Legacy OpenWire Module 5.17.0 before 5.17.6
- Apache ActiveMQ Legacy OpenWire Module 5.16.0 before 5.16.7
- Apache ActiveMQ Legacy OpenWire Module 5.8.0 before 5.15.16

Description:

Apache ActiveMQ is vulnerable to Remote Code Execution.The vulnerability ma=
y allow a remote attacker with network access to a broker to run arbitrary =
shell commands by manipulating serialized class types in the OpenWire proto=
col to cause the broker to instantiate=C2=A0any class on the classpath.=C2=
=A0

Users are recommended to upgrade to version 5.15.16, 5.16.7, 5.17.6, or 5.1=
8.3, which fixes this issue.

This issue is being tracked as AMQ-9370=20

References:

https://activemq.apache.org/security-advisories.data/CVE-2023-46604
https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46604
https://issues.apache.org/jira/browse/AMQ-9370

