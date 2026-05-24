Received: (qmail 30549 invoked by uid 550); 24 May 2026 21:22:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1202 invoked from network); 24 May 2026 20:19:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Scheffler <jscheffl@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8f9acf81-c9c7-d546-588f-8a890c5bf0b1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 20:19:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-46745: Apache Airflow FAB provider: [ Security Report ]
 LDAP Filter Injection in FAB Auth Manager _search_ldap reachable via
 /auth/token (ZDRES-223) 

Severity: Moderate=20

Affected versions:

- Apache Airflow FAB provider (apache-airflow-providers-fab) before 3.6.4

Description:

Apache Airflow FAB Auth Manager contains an LDAP filter injection vulnerabi=
lity (CWE-90) that allows unauthenticated attackers to exfiltrate directory=
 data or bypass authentication. Upgrade to apache-airflow-providers-fab 3.6=
.4 or later. If immediate upgrade is not possible, disable LDAP authenticat=
ion until the provider can be updated.

Credit:

Venkatraman Kumar (r3dw0lfsec), Securin (finder)
orbisai0security (automated scanner =E2=80=94 Orbis Security AI) (remediati=
on developer)

References:

https://github.com/apache/airflow/pull/66417
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-46745

