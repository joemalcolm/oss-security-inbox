Received: (qmail 13798 invoked by uid 550); 28 Feb 2024 14:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6004 invoked from network); 28 Feb 2024 10:22:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <19cb61d5-b177-1543-73ae-735c292f1407@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 10:23:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24772: Apache Superset: Improper Neutralisation of custom
 SQL on embedded context 

Affected versions:

- Apache Superset before 3.0.4
- Apache Superset 3.1.0 before 3.1.1

Description:

A guest user could exploit a chart data REST API and send arbitrary SQL sta=
tements that on error could leak information from the underlying analytics =
database.This issue affects Apache Superset: before 3.0.4, from 3.1.0 befor=
e 3.1.1.

Users are recommended to upgrade to version 3.1.1 or 3.0.4, which fixes the=
 issue.

Credit:

Beto Ferreira De Almeida (remediation developer)
Linden Haynes (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-24772

