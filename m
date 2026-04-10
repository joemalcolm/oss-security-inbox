Received: (qmail 12000 invoked by uid 550); 10 Apr 2026 15:08:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17636 invoked from network); 10 Apr 2026 13:40:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <86cfb34b-21d1-65f1-5c3c-85e36972037c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:40:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34477: Apache Log4j Core: verifyHostName attribute
 silently ignored in TLS configuration, allowing hostname verification
 bypass 

Severity: moderate=20

Affected versions:

- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 2.12.0 before 2.2=
5.4
- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 3.0.0-alpha1 thro=
ugh 3.0.0-beta3

Description:

The fix for  CVE-2025-68161 https://logging.apache.org/security.html#CVE-20=
25-68161  was incomplete: it addressed hostname verification only when enab=
led via the  log4j2.sslVerifyHostName https://logging.apache.org/log4j/2.x/=
manual/systemproperties.html#log4j2.sslVerifyHostName  system property, but=
 not when configured through the  verifyHostName https://logging.apache.org=
/log4j/2.x/manual/appenders/network.html#SslConfiguration-attr-verifyHostNa=
me  attribute of the <Ssl> element.

Although the verifyHostName configuration attribute was introduced in Log4j=
 Core 2.12.0, it was silently ignored in all versions through 2.25.3, leavi=
ng TLS connections vulnerable to interception regardless of the configured =
value.

A network-based attacker may be able to perform a man-in-the-middle attack =
when all of the following conditions are met:

  *  An SMTP, Socket, or Syslog appender is in use.
  *  TLS is configured via a nested <Ssl> element.
  *  The attacker can present a certificate issued by a CA trusted by the a=
ppender's configured trust store, or by the default Java trust store if non=
e is configured.
This issue does not affect users of the HTTP appender, which uses a separat=
e  verifyHostname https://logging.apache.org/log4j/2.x/manual/appenders/net=
work.html#HttpAppender-attr-verifyHostName  attribute that was not subject =
to this bug and verifies host names by default.

Users are advised to upgrade to Apache Log4j Core 2.25.4, which corrects th=
is issue.

Credit:

Samuli Leinonen (original reporter) (finder)
Naresh Kandula (independently) (finder)
Vitaly Simonovich (independently) (finder)
Raijuna (independently) (finder)
Danish Siddiqui (djvirus, independently) (finder)
Markus Magnuson (independently) (finder)
Haruki Oyama (Waseda University, independently) (finder)

References:

https://github.com/apache/logging-log4j2/pull/4075
https://logging.apache.org/security.html#CVE-2026-34477
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4j/2.x/manual/appenders/network.html#SslConfi=
guration-attr-verifyHostName
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34477

Timeline:

2025-12-20: Vulnerability reported by Samuli Leinonen
2025-12-30: Candidate patch shared internally by Piotr P. Karwasz
2026-02-25: Independent report received from Naresh Kandula
2026-03-01: Independent report received from Vitaly Simonovich
2026-03-02: Independent report received from Raijuna
2026-03-08: Independent report received from Danish Siddiqui
2026-03-19: Independent report received from Markus Magnuson
2026-03-21: Independent report received from Haruki Oyama
2026-03-24: Fix shared publicly by Piotr P. Karwasz as pull request #4075
2026-03-28: Log4j 2.25.4 released

