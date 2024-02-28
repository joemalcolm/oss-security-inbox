X-Quarantine-ID: <ZWFLoR9N8CJW>
Received: (qmail 7838 invoked by uid 550); 28 Feb 2024 14:05:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19476 invoked from network); 28 Feb 2024 09:57:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d212617d-445e-e96b-9786-eac55791bbb2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 10:00:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27315: Apache Superset: Improper error handling on alerts

Affected versions:

- Apache Superset before 3.0.4
- Apache Superset 3.1.0 before 3.1.1

Description:

An authenticated user with privileges to create Alerts on Alerts & Reports =
has the capability to generate a specially crafted SQL statement that trigg=
ers an error on the database. This error is not properly handled by Apache =
Superset and may inadvertently surface in the error log of the Alert exposi=
ng possibly sensitive data.

This issue affects Apache Superset: before 3.0.4, from 3.1.0 before 3.1.1.

Users are recommended to upgrade to version 3.1.1 or 3.0.4, which fixes the=
 issue.

Credit:

Anastasios Stasinopoulos - OBRELA LABS (finder)
Beto de Almeida (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-27315

