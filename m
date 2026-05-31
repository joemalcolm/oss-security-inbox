Received: (qmail 27996 invoked by uid 550); 31 May 2026 17:02:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13546 invoked from network); 31 May 2026 16:20:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <36d9d078-851d-b7f9-282c-04120faa6a2d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 16:17:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-49157: Apache ActiveMQ: Authenticated low-privilege Web
 users retain Jolokia broker-management capability by default 

Severity: important=20

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.7
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.6

Description:

Incorrect Default Permissions vulnerability in Apache ActiveMQ.

This issue affects Apache ActiveMQ: before 5.19.7, from 6.0.0 before 6.2.6.

The default Jolokia authorization settings granted=C2=A0non-admin (low-priv=
ilege) web-login accounts=C2=A0access to Jolokia operations which allowed e=
xecuting broker management operations meant for admins such as addQueue and=
 removeQueue.

Users are recommended to upgrade to version 6.2.6 or 5.19.7, which fixes th=
e issue.

Credit:

Leon Johnson (github: lokerxx) (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-49157

