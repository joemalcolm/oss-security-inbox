Received: (qmail 19987 invoked by uid 550); 10 Apr 2026 15:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24371 invoked from network); 10 Apr 2026 13:47:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e724da31-c90e-4357-af94-738ae2be1ff0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:42:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40021: Apache Log4net: Silent log event loss in XmlLayout
 and XmlLayoutSchemaLog4J due to unescaped XML 1.0 forbidden characters 

Severity: moderate=20

Affected versions:

- Apache Log4net (log4net) before 3.3.0

Description:

Apache Log4net's  XmlLayout https://logging.apache.org/log4net/manual/confi=
guration/layouts.html#layout-list  and  XmlLayoutSchemaLog4J https://loggin=
g.apache.org/log4net/manual/configuration/layouts.html#layout-list , in ver=
sions before 3.3.0, fail to sanitize characters forbidden by the  XML 1.0 s=
pecification https://www.w3.org/TR/xml/#charsets  in MDC property keys and =
values, as well as the identity field that may carry attacker-influenced da=
ta. This causes an exception during serialization and the silent loss of th=
e affected log event.

An attacker who can influence any of these fields can exploit this to suppr=
ess individual log records, impairing audit trails and detection of malicio=
us activity.

Users are advised to upgrade to Apache Log4net 3.3.0, which fixes this issu=
e.

Credit:

f00dat (finder)

References:

https://github.com/apache/logging-log4net/pull/280
https://logging.apache.org/security.html#CVE-2026-40021
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4net/manual/configuration/layouts.html
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40021

Timeline:

2026-02-10: Vulnerability reported by f00dat
2026-02-17: Fix shared publicly by Jan Friedrich as pull request #280
2026-02-20: Log4net 3.3.0 released

