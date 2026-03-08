Received: (qmail 5512 invoked by uid 550); 9 Mar 2026 02:00:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5911 invoked from network); 8 Mar 2026 19:09:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <984cd814-8f9a-8525-7d5a-876bf3edb14d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 08 Mar 2026 19:09:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-69219: Apache Airflow Providers Http: Unsafe Pickle
 Deserialization in apache-airflow-providers-http leading to RCE via
 HttpOperator 

Severity: Low=20

Affected versions:

- Apache Airflow Providers Http (apache-airflow-providers-http) 5.1.0 befor=
e 6.0.0

Description:

A user with access to the DB could craft a database entry that would result=
 in executing code on Triggerer - which gives anyone who have access to DB =
the same permissions as Dag Author. Since direct DB access is not usual and=
 recommended for Airflow, the likelihood of it making any damage is low.

You should upgrade to version 6.0.0 of the provider to avoid even that risk.

Credit:

skypher (finder)
Shauryae1337 (GitHub: https://github.com/Shauryae1337) (finder)
Ahmet Artu=C3=A7 (finder)

References:

https://github.com/apache/airflow/pull/61662
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-69219

