Received: (qmail 11923 invoked by uid 550); 19 Dec 2023 13:46:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23584 invoked from network); 19 Dec 2023 09:30:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8ebe75bf-ab27-3937-4290-2415abcfadf0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Dec 2023 09:31:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49736: Apache Superset: SQL Injection on where_in JINJA
 macro 

Affected versions:

- Apache Superset before 2.1.2
- Apache Superset 3.0.0 before 3.0.2

Description:

A where_in JINJA macro allows users to specify a quote, which combined with=
 a carefully crafted statement=C2=A0would allow for SQL injection=C2=A0in A=
pache Superset.This issue affects Apache Superset: before 2.1.2, from 3.0.0=
 before 3.0.2.

Users are recommended to upgrade to version 3.0.2, which fixes the issue.

Credit:

Jack Prince-Fulls ( jf@incyan.com ) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49736

