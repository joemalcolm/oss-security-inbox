Received: (qmail 11761 invoked by uid 550); 14 Aug 2025 12:34:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15501 invoked from network); 14 Aug 2025 11:44:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6b5689af-8eab-2b6f-de75-25f8529f60e7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Aug 2025 11:43:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55675: Apache Superset: Incorrect datasource
 authorization on REST API 

Severity:=20

Affected versions:

- Apache Superset before 5.0.0

Description:

Apache Superset contains an improper access control vulnerability in its /e=
xplore endpoint. A missing authorization check allows an authenticated user=
 to discover metadata about datasources they do not have permission to acce=
ss. By iterating through the datasource_id in the URL, an attacker can enum=
erate and confirm the existence and names of protected datasources, leading=
 to sensitive information disclosure.

This issue affects Apache Superset: before 5.0.0.

Users are recommended to upgrade to version 5.0.0, which fixes the issue.

Credit:

Daniel H=C3=B6xtermann / hxtmdev (remediation developer)
Pedro Sousa (coordinator)

References:

https://www.cve.org/CVERecord?id=3DCVE-2025-55675

