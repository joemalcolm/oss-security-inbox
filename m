Received: (qmail 22147 invoked by uid 550); 10 Apr 2026 15:08:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18103 invoked from network); 10 Apr 2026 13:46:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f501ced8-4b03-1048-929a-2ea7935dc528@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:43:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40023: Apache Log4cxx, Apache Log4cxx (Conan), Apache
 Log4cxx (Brew): Silent log event loss in XMLLayout due to unescaped XML
 1.0 forbidden characters 

Severity: moderate=20

Affected versions:

- Apache Log4cxx before 1.7.0
- Apache Log4cxx (Conan) (log4cxx) before 1.7.0
- Apache Log4cxx (Brew) (log4cxx) before 1.7.0

Description:

Apache Log4cxx's  XMLLayout https://logging.apache.org/log4cxx/1.7.0/classl=
og4cxx_1_1xml_1_1XMLLayout.html , in versions before 1.7.0, fails to saniti=
ze characters forbidden by the  XML 1.0 specification https://www.w3.org/TR=
/xml/#charsets  in log messages, NDC, and MDC property keys and values, pro=
ducing invalid XML output. Conforming XML parsers must reject such document=
s with a fatal error, which may cause downstream log processing systems to =
drop or fail to index affected records.

An attacker who can influence logged data can exploit this to suppress indi=
vidual log records, impairing audit trails and detection of malicious activ=
ity.

Users are advised to upgrade to Apache Log4cxx 1.7.0, which fixes this issu=
e.

Credit:

Olawale Titiloye (finder)

References:

https://github.com/apache/logging-log4cxx/pull/609
https://logging.apache.org/security.html#CVE-2026-40023
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4cxx/1.7.0/classlog4cxx_1_1xml_1_1XMLLayout.h=
tml
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40023

Timeline:

2026-03-15: Vulnerability reported by Olawale Titiloye
2026-03-16: Fix shared publicly by Stephen Webb as pull request #609
2026-04-04: Log4cxx 1.7.0 released

