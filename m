Received: (qmail 30374 invoked by uid 550); 12 Jul 2023 18:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23583 invoked from network); 12 Jul 2023 18:24:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <85b6b155-cfe9-ab68-c93a-cce73046a7af@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Jul 2023 18:24:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37415: Apache Airflow Apache Hive Provider: Improper
 Input Validation in Hive Provider with proxy_user 

Severity: moderate

Affected versions:

- Apache Airflow Apache Hive Provider before 6.1.2

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apach=
e Airflow Apache Hive Provider.

Patching on top of CVE-2023-35797
Before=C2=A06.1.2=C2=A0the proxy_user option can also inject semicolon.

This issue affects Apache Airflow Apache Hive Provider: before 6.1.2.

It is recommended updating provider version to 6.1.2 in order to avoid this=
 vulnerability.

Credit:

Son Tran from VNPT - VCI (reporter)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-37415

