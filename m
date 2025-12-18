Received: (qmail 9938 invoked by uid 550); 18 Dec 2025 19:13:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24255 invoked from network); 18 Dec 2025 19:09:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8905aefe-dfb9-e198-c1fe-6d6a955b45a9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Dec 2025 19:09:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-68161: Apache Log4j Core: Missing TLS hostname
 verification in Socket appender 

Severity: moderate=20

Affected versions:

- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 2.0-beta9 before =
2.25.3

Description:

The Socket Appender in Apache Log4j Core versions 2.0-beta9 through 2.25.2 =
does not perform TLS hostname verification of the peer certificate, even wh=
en the  verifyHostName https://logging.apache.org/log4j/2.x/manual/appender=
s/network.html#SslConfiguration-attr-verifyHostName  configuration attribut=
e or the  log4j2.sslVerifyHostName https://logging.apache.org/log4j/2.x/man=
ual/systemproperties.html#log4j2.sslVerifyHostName  system property is set =
to true.

This issue may allow a man-in-the-middle attacker to intercept or redirect =
log traffic under the following conditions:

  *  The attacker is able to intercept or redirect network traffic between =
the client and the log receiver.
  *  The attacker can present a server certificate issued by a certificatio=
n authority trusted by the Socket Appender=E2=80=99s configured trust store=
 (or by the default Java trust store if no custom trust store is configured=
).


Users are advised to upgrade to Apache Log4j Core version 2.25.3, which add=
resses this issue.

As an alternative mitigation, the Socket Appender may be configured to use =
a private or restricted trust root to limit the set of trusted certificates.

Credit:

Samuli Leinonen (finder)

References:

https://github.com/apache/logging-log4j2/pull/4002
https://logging.apache.org/security.html#CVE-2025-68161
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4j/2.x/manual/systemproperties.html#log4j2.ss=
lVerifyHostName
https://logging.apache.org/log4j/2.x/manual/appenders/network.html#SslConfi=
guration-attr-verifyHostName
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-68161

