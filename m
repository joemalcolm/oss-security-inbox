Received: (qmail 30509 invoked by uid 550); 9 Apr 2026 15:37:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25601 invoked from network); 9 Apr 2026 12:44:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bcbd7140-4104-e130-0c86-ce5df8acb131@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 12:44:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40046: Apache ActiveMQ, Apache ActiveMQ All, Apache
 ActiveMQ MQTT: Missing fix for CVE-2025-66168: MQTT control packet
 remaining length field is not properly validated 

Severity: moderate=20

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.4
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.4
- Apache ActiveMQ MQTT (org.apache.activemq:activemq-mqtt) 6.0.0 before 6.2=
.4

Description:

Integer Overflow or Wraparound vulnerability in Apache ActiveMQ, Apache Act=
iveMQ All, Apache ActiveMQ MQTT.

The fix for "CVE-2025-66168: MQTT control packet remaining length field is =
not properly validated" was only applied to 5.19.2 (and future 5.19.x) rele=
ases but was missed for all 6.0.0+ versions.


This issue affects Apache ActiveMQ: from 6.0.0 before 6.2.4; Apache ActiveM=
Q All: from 6.0.0 before 6.2.4; Apache ActiveMQ MQTT: from 6.0.0 before 6.2=
.4.



Users are recommended to upgrade to version 6.2.4 or a 5.19.x version start=
ing with 5.19.2 or later (currently latest is 5.19.5), which fixes the issu=
e.

Credit:

Adrien Bernard (finder)

References:

https://www.cve.org/CVERecord?id=3DCVE-2025-66168
https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40046

