Received: (qmail 4036 invoked by uid 550); 15 Apr 2026 00:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7650 invoked from network); 15 Apr 2026 00:17:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ced1eecf-af20-b18a-18a6-8f1d5c64d1d0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2026 00:17:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54550: Apache Airflow: RCE by race condition in
 example_xcom dag 

Severity: Low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.0

Description:

The example example_xcom=C2=A0that was included in airflow documentation im=
plemented unsafe pattern of reading value
from xcom in the way that could be exploited to allow UI user who had acces=
s to modify XComs to perform arbitrary
execution of code on the worker. Since the UI users are already highly trus=
ted, this is a Low severity vulnerability.

It does not affect Airflow release - example_dags are not supposed to be en=
abled in production environment, however
users following the example could replicate the bad pattern. Documentation =
of Airflow 3.2.0 contains version of
the example with improved resiliance for that case.

Users who followed that pattern are advised to adjust their implementations=
 accordingly.

Credit:

Vincent55 Yang (finder)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54550

