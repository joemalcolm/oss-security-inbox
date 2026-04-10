Received: (qmail 13569 invoked by uid 550); 10 Apr 2026 15:08:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11695 invoked from network); 10 Apr 2026 13:42:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c24350c8-1caf-3b79-baad-c1e37d2707e3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:40:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34478: Apache Log4j Core: Log injection in Rfc5424Layout
 due to silent configuration incompatibility 

Severity: moderate=20

Affected versions:

- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 2.21.0 before 2.2=
5.4
- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 3.0.0-beta1 throu=
gh 3.0.0-beta3

Description:

Apache Log4j Core's  Rfc5424Layout https://logging.apache.org/log4j/2.x/man=
ual/layouts.html#RFC5424Layout , in versions 2.21.0 through 2.25.3, is vuln=
erable to log injection via CRLF sequences due to undocumented renames of s=
ecurity-relevant configuration attributes.

Two distinct issues affect users of stream-based syslog services who config=
ure Rfc5424Layout directly:

  *  The newLineEscape attribute was silently renamed, causing newline esca=
ping to stop working for users of TCP framing (RFC 6587), exposing them to =
CRLF injection in log output.
  *  The useTlsMessageFormat attribute was silently renamed, causing users =
of TLS framing (RFC 5425) to be silently downgraded to unframed TCP (RFC 65=
87), without newline escaping.


Users of the SyslogAppender are not affected, as its configuration attribut=
es were not modified.

Users are advised to upgrade to Apache Log4j Core 2.25.4, which corrects th=
is issue.

Credit:

Samuli Leinonen (finder)

References:

https://github.com/apache/logging-log4j2/pull/4074
https://logging.apache.org/security.html#CVE-2026-34478
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4j/2.x/manual/layouts.html#RFC5424Layout
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34478

Timeline:

2025-12-25: Vulnerability reported by Samuli Leinonen
2026-03-10: Candidate patch shared internally by Piotr P. Karwasz
2026-03-24: Fix shared publicly by Piotr P. Karwasz as pull request #4074
2026-03-25: Fix verified by reporter
2026-03-28: Log4j 2.25.4 released

