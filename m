Received: (qmail 29718 invoked by uid 550); 3 Mar 2026 17:29:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12159 invoked from network); 3 Mar 2026 17:28:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <08cf698e-47cc-a5db-4a7d-70791f12ec86@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 03 Mar 2026 17:26:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66168: Apache ActiveMQ, Apache ActiveMQ All Module,
 Apache ActiveMQ MQTT Module: MQTT control packet remaining length field is
 not properly validated 

Severity:=20

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.2
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.1.9
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.2.0 before 6.2.1
- Apache ActiveMQ All Module (org.apache.activemq:activemq-all) before 5.19=
.2
- Apache ActiveMQ All Module (org.apache.activemq:activemq-all) 6.0.0 befor=
e 6.1.9
- Apache ActiveMQ All Module (org.apache.activemq:activemq-all) 6.2.0 befor=
e 6.2.1
- Apache ActiveMQ MQTT Module (org.apache.activemq:activemq-mqtt) before 5.=
19.2
- Apache ActiveMQ MQTT Module (org.apache.activemq:activemq-mqtt) 6.0.0 bef=
ore 6.1.9
- Apache ActiveMQ MQTT Module (org.apache.activemq:activemq-mqtt) 6.2.0 bef=
ore 6.2.1

Description:

Apache ActiveMQ does not properly validate the remaining length field which=
 may lead to an overflow during the decoding of malformed packets.=C2=A0Whe=
n this integer overflow occurs, ActiveMQ may incorrectly compute the total =
Remaining Length and subsequently misinterpret the payload as multiple MQTT=
 control packets which makes=C2=A0the broker susceptible to unexpected beha=
vior when interacting with non-compliant clients.=C2=A0This behavior violat=
es the MQTT v3.1.1 specification, which restricts Remaining Length to a max=
imum of 4 bytes.=C2=A0The scenario occurs on established connections after =
the authentication process. Brokers that are not enabling mqtt transport co=
nnectors are not impacted.

This issue affects Apache ActiveMQ: before 5.19.2, 6.0.0 to 6.1.8, and 6.2.0

Users are recommended to upgrade to version 5.19.2, 6.1.9, or 6.2.1, which =
fixes the issue.

Credit:

Gai Tanaka <641.work123@gmail.com> (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-66168

