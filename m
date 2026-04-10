Received: (qmail 16382 invoked by uid 550); 10 Apr 2026 15:08:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17642 invoked from network); 10 Apr 2026 13:46:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <77a5a420-260f-a4c1-3579-cd771e86b0c7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:41:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34480: Apache Log4j Core: Silent log event loss in
 XmlLayout due to unescaped XML 1.0 forbidden characters 

Severity: moderate=20

Affected versions:

- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 2.0-alpha1 before=
 2.25.4
- Apache Log4j Core (org.apache.logging.log4j:log4j-core) 3.0.0-alpha1 thro=
ugh 3.0.0-beta3

Description:

Apache Log4j Core's  XmlLayout https://logging.apache.org/log4j/2.x/manual/=
layouts.html#XmlLayout , in versions up to and including 2.25.3, fails to s=
anitize characters forbidden by the  XML 1.0 specification https://www.w3.o=
rg/TR/xml/#charsets  producing invalid XML output whenever a log message or=
 MDC value contains such characters.

The impact depends on the StAX implementation in use:

  *  JRE built-in StAX: Forbidden characters are silently written to the ou=
tput, producing malformed XML. Conforming parsers must reject such document=
s with a fatal error, which may cause downstream log-processing systems to =
drop the affected records.
  *  Alternative StAX implementations (e.g.,  Woodstox https://github.com/F=
asterXML/woodstox , a transitive dependency of the Jackson XML Dataformat m=
odule): An exception is thrown during the logging call, and the log event i=
s never delivered to its intended appender, only to Log4j's internal status=
 logger.


Users are advised to upgrade to Apache Log4j Core 2.25.4, which corrects th=
is issue by sanitizing forbidden characters before XML output.

Credit:

Ap4sh (Samy Medjahed) and Ethicxz (Eliott Laurie) (original reporters) (fin=
der)
jabaltarik1 (independently) (finder)

References:

https://github.com/apache/logging-log4j2/pull/4077
https://logging.apache.org/security.html#CVE-2026-34480
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4j/2.x/manual/layouts.html#XmlLayout
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34480

Timeline:

2026-02-16: Vulnerability reported by Ap4sh and ethicxz
2026-03-10: Candidate patch shared internally by Piotr P. Karwasz
2026-03-15: Independent report received from jabaltarik1
2026-03-24: Fix shared publicly by Piotr P. Karwasz as pull request #4077
2026-03-25: Fix verified by reporter
2026-03-28: Log4j 2.25.4 released

