Received: (qmail 14247 invoked by uid 550); 10 Apr 2026 15:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12088 invoked from network); 10 Apr 2026 13:42:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4f627e3a-dd1c-add4-35fc-94448d187f4b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Apr 2026 13:41:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34479: Apache Log4j 1 to Log4j 2 bridge: Silent log event
 loss in Log4j1XmlLayout due to unescaped XML 1.0 forbidden characters 

Severity: moderate=20

Affected versions:

- Apache Log4j 1 to Log4j 2 bridge (org.apache.logging.log4j:log4j-1.2-api)=
 2.7 before 2.25.4
- Apache Log4j 1 to Log4j 2 bridge (org.apache.logging.log4j:log4j-1.2-api)=
 3.0.0-alpha1 through 3.0.0-beta2

Description:

The Log4j1XmlLayout from the Apache Log4j 1-to-Log4j 2 bridge fails to esca=
pe characters forbidden by the XML 1.0 standard, producing malformed XML ou=
tput. Conforming XML parsers are required to reject documents containing su=
ch characters with a fatal error, which may cause downstream log processing=
 systems to drop or fail to index affected records.

Two groups of users are affected:

  *  Those using Log4j1XmlLayout directly in a Log4j Core 2 configuration f=
ile.
  *  Those using the Log4j 1 configuration compatibility layer with org.apa=
che.log4j.xml.XMLLayout specified as the layout class.


Users are advised to upgrade to Apache Log4j 1-to-Log4j 2 bridge version 2.=
25.4, which corrects this issue.

Note: The Apache Log4j 1-to-Log4j 2 bridge is deprecated and will not be pr=
esent in Log4j 3. Users are encouraged to consult the  Log4j 1 to Log4j 2 m=
igration guide https://logging.apache.org/log4j/2.x/migrate-from-log4j1.htm=
l , and specifically the section on eliminating reliance on the bridge.

Credit:

Ap4sh (Samy Medjahed) and Ethicxz (Eliott Laurie) (original reporters) (fin=
der)
jabaltarik1 (independently) (finder)

References:

https://github.com/apache/logging-log4j2/pull/4078
https://logging.apache.org/security.html#CVE-2026-34479
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/log4j/2.x/migrate-from-log4j1.html
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34479

Timeline:

2026-02-16: Vulnerability reported by Ap4sh and ethicxz
2026-03-15: Independent report received from jabaltarik1
2026-03-24: Fix shared publicly by Piotr P. Karwasz as pull request #4078
2026-03-25: Fix verified by reporter
2026-03-28: Log4j 2.25.4 released

