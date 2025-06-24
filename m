Received: (qmail 20170 invoked by uid 550); 24 Jun 2025 14:55:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15404 invoked from network); 24 Jun 2025 05:42:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7f536d61-f0f8-145d-3d4d-aa3930190181@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Jun 2025 05:41:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-50213: Apache Airflow Providers Snowflake: Potential SQL
 injection in CopyFromExternalStageToSnowflakeOperator 

Severity: low=20

Affected versions:

- Apache Airflow Providers Snowflake (apache-airflow-providers-snowflake) b=
efore 6.4.0

Description:

Failure to Sanitize Special Elements into a Different Plane (Special Elemen=
t Injection) vulnerability in Apache Airflow Providers Snowflake.

This issue affects Apache Airflow Providers Snowflake: before 6.4.0.

Sanitation of table and stage parameters were added in=C2=A0CopyFromExterna=
lStageToSnowflakeOperator=C2=A0to prevent=C2=A0SQL injection
Users are recommended to upgrade to version 6.4.0, which fixes the issue.

Credit:

Nhien Pham (@nhienit) at Galaxy One (finder)

References:

https://github.com/apache/airflow/pull/51734
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-50213

