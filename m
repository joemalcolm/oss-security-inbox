Received: (qmail 9720 invoked by uid 550); 16 Jan 2023 11:56:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24054 invoked from network); 16 Jan 2023 09:34:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5bc80bd8-7259-bb67-8684-a53d8d67a3b5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:34:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-41703: Apache Superset: SQL injection vulnerability in
 adhoc clauses 

Severity: critical

Description:

A vulnerability in the SQL Alchemy connector of Apache Superset allows an a=
uthenticated user with read access to a specific database to add subqueries=
 to the WHERE and HAVING fields referencing tables on the same database tha=
t the user should not have access to, despite the user having the feature f=
lag "ALLOW_ADHOC_SUBQUERY" disabled (default value).  This issue affects Ap=
ache Superset version 1.5.2 and prior versions and version 2.0.0.

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-41703

