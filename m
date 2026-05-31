Received: (qmail 20241 invoked by uid 550); 31 May 2026 17:02:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28291 invoked from network); 31 May 2026 16:16:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Christopher L. Shannon" <cshannon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <649a1584-47fc-e53e-6c1e-43dc4be29652@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 16:16:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42253: Apache ActiveMQ, Apache ActiveMQ Web: HTTP
 Response Header Injection via JMS Message Properties 

Severity: important=20

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.7
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.6
- Apache ActiveMQ Web (org.apache.activemq:activemq-web) before 5.19.7
- Apache ActiveMQ Web (org.apache.activemq:activemq-web) 6.0.0 before 6.2.6

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache ActiveMQ, Apache ActiveMQ Web.

The MessageServlet in the ActiveMQ web console API copies every JMS message
property into an HTTP response header without any validation. This can allo=
w overwriting and injecting security headers by setting them on JMS message=
s that are returned by the servlet.

This issue affects Apache ActiveMQ: before 5.19.7, from 6.0.0 before 6.2.6;=
 Apache ActiveMQ Web: before 5.19.7, from 6.0.0 before 6.2.6.

Users are recommended to upgrade to version 5.19.7 or 6.2.6, which fixes th=
e issue.=C2=A0The MessageServlet has now been deprecated and disabled by de=
fault.

Credit:

Vishal Shukla (finder)
pyn3rd (finder)
uname (finder)
4ra1n (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42253

