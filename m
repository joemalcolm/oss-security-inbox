Received: (qmail 26103 invoked by uid 550); 31 May 2026 17:02:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13393 invoked from network); 31 May 2026 16:20:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d4968eca-7663-ec99-a26d-458e8c5a9e1a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 16:17:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-46605: Apache ActiveMQ Broker, Apache ActiveMQ All,
 Apache ActiveMQ: Incomplete authorization during destination removal 

Severity: moderate=20

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.7
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before=
 6.2.6
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.7
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.6
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.7
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.6

Description:

Incomplete authorization by Apache ActiveMQ server before versions v6.2.6 a=
nd v5.19.7 allows authenticated connections to remove existing destinations=
 with proper permissions.

This issue affects Apache ActiveMQ Broker: before 5.19.7, from 6.0.0 before=
 6.2.6; Apache ActiveMQ All: before 5.19.7, from 6.0.0 before 6.2.6; Apache=
 ActiveMQ: before 5.19.7, from 6.0.0 before 6.2.6.

Users are recommended to upgrade to version v6.2.6 or v5.19.7, which fixes =
the issue.

Credit:

Leon Johnson (github: lokerxx) (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-46605

