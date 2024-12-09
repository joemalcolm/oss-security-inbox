Received: (qmail 24182 invoked by uid 550); 9 Dec 2024 16:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20474 invoked from network); 9 Dec 2024 12:16:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <76a7b02a-0147-c007-5cbd-2365e76187dc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Dec 2024 12:14:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-53947: Apache Superset: Improper SQL authorisation, parse
 not checking for specific postgres functions 

Affected versions:

- Apache Superset before 4.1.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Superset. Specifically, certain engine-sp=
ecific functions are not checked, which allows attackers to bypass Apache S=
uperset's SQL authorization. This issue is a follow-up to=C2=A0CVE-2024-398=
87 with additional disallowed PostgreSQL functions now included:=C2=A0query=
_to_xml_and_xmlschema,=C2=A0table_to_xml,=C2=A0table_to_xml_and_xmlschema.

This issue affects Apache Superset: <4.1.0.

Users are recommended to upgrade to version 4.1.0, which fixes the issue or=
 add these Postgres functions to the config set=C2=A0DISALLOWED_SQL_FUNCTIO=
NS.

Credit:

Iv=C3=A1n Arce (Quarkslab) (reporter)
Daniel Gaspar (remediation developer)
Mathieu Farrell (Quarkslab) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-53947

