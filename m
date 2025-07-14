Received: (qmail 11783 invoked by uid 550); 14 Jul 2025 09:12:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11753 invoked from network); 14 Jul 2025 09:12:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Julian Reschke <reschke@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2e559cf5-e82c-a5a8-13fd-c8401cfab3d6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Jul 2025 09:11:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-53689: Apache Jackrabbit: XXE vulnerability in
 jackrabbit-spi-commons 

Severity: critical=20

Affected versions:

- Apache Jackrabbit (org.apache.jackrabbit:jackrabbit-spi-commons) 2.20.0 b=
efore 2.20.17
- Apache Jackrabbit (org.apache.jackrabbit:jackrabbit-spi-commons) 2.22.0 b=
efore 2.22.1
- Apache Jackrabbit (org.apache.jackrabbit:jackrabbit-spi-commons) 2.23.0-b=
eta before 2.23.2-beta

Description:

Blind XXE Vulnerabilities in jackrabbit-spi-commons and jackrabbit-core in =
Apache Jackrabbit < 2.23.2 due to usage of an unsecured document build to l=
oad privileges.

Users are recommended to upgrade to versions 2.20.17 (Java 8), 2.22.1 (Java=
 11) or 2.23.2 (Java 11, beta versions), which fix this issue. Earlier vers=
ions (up to 2.20.16) are not supported anymore, thus users should update to=
 the respective supported version.

Credit:

Lars Krapf - Adobe (reporter)
Dylan Pindur - Assetnote (finder)
Adam Kues - Assetnote (finder)

References:

https://jackrabbit.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-53689

