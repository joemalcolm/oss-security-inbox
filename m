Received: (qmail 7566 invoked by uid 550); 24 Jan 2026 06:35:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26097 invoked from network); 24 Jan 2026 06:30:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ae8b2833-f721-d2b0-085c-682a0dee6eb6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 24 Jan 2026 06:27:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24656: Apache Karaf: Decanter log-socket collector has deserialization vulnerability

Severity: important=20

Affected versions:

- Apache Karaf (org.apache.karaf.decanter.collector:org.apache.karaf.decant=
er.collector.log.socket) before 2.12.0
- Apache Karaf (org.apache.karaf.decanter.collector:org.apache.karaf.decant=
er.collector.log.socket) 2.12.0 unaffected

Description:

Deserialization of Untrusted Data vulnerability in Apache Karaf Decanter.


The Decanter log socket collector exposes the port 4560, without authentica=
tion. If the collector exposes allowed classes property, this configuration=
 can be bypassed.
It means that the log socket collector is vulnerable to deserialization of =
untrusted data, eventually causing DoS.


NB: Decanter log socket collector is not installed by default. Users who ha=
ve not installed Decanter log socket are not impacted by this issue.

This issue affects Apache Karaf Decanter before 2.12.0.

Users are recommended to upgrade to version 2.12.0, which fixes the issue.

This issue is being tracked as https://github.com/apache/karaf-decanter/iss=
ues/555=20

Credit:

r00t4dm (finder)

References:

https://karaf.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-24656
https://issues.apache.org/jira/browse/https://github.com/apache/karaf-decan=
ter/issues/555

