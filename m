Received: (qmail 18286 invoked by uid 550); 10 Apr 2026 15:08:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17788 invoked from network); 10 Apr 2026 13:46:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fd4852d5-227d-f06a-25c4-8ed439eb85a5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:42:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34481: Apache Log4j JSON Template Layout: Improper
 serialization of non-finite floating-point values in JsonTemplateLayout 

Severity: moderate=20

Affected versions:

- Apache Log4j JSON Template Layout (org.apache.logging.log4j:log4j-layout-=
template-json) 2.14.0 before 2.25.4
- Apache Log4j JSON Template Layout (org.apache.logging.log4j:log4j-layout-=
template-json) 3.0.0-alpha1 through 3.0.0-beta3

Description:

Apache Log4j's  JsonTemplateLayout https://logging.apache.org/log4j/2.x/man=
ual/json-template-layout.html , in versions up to and including 2.25.3, pro=
duces invalid JSON output when log events contain non-finite floating-point=
 values (NaN, Infinity, or -Infinity), which are prohibited by RFC 8259. Th=
is may cause downstream log processing systems to reject or fail to index a=
ffected records.

An attacker can exploit this issue only if both of the following conditions=
 are met:

  *  The application uses JsonTemplateLayout.
  *  The application logs a MapMessage containing an attacker-controlled fl=
oating-point value.


Users are advised to upgrade to Apache Log4j JSON Template Layout 2.25.4, w=
hich corrects this issue.

Credit:

Ap4sh (Samy Medjahed) and Ethicxz (Eliott Laurie) (finder)

References:

https://github.com/apache/logging-log4j2/pull/4080
https://logging.apache.org/security.html#CVE-2026-34481
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4j/2.x/manual/json-template-layout.html
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34481

Timeline:

2026-02-16: Vulnerability reported by Ap4sh and ethicxz
2026-03-10: Candidate patch internally shared by Piotr P. Karwasz
2026-03-24: Fix shared publicly by Piotr P. Karwasz as pull request #4080
2026-03-25: Fix verified by the reporter
2026-03-28: Log4j 2.25.4 released

