Received: (qmail 3281 invoked by uid 550); 28 Oct 2023 12:43:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15616 invoked from network); 28 Oct 2023 06:30:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e4c0830d-754a-2b9f-4379-cd13dd3c69d9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 28 Oct 2023 06:30:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46215: Apache Airflow Celery provider, Apache Airflow:
 Sensitive information logged as clear text when rediss, amqp, rpc
 protocols are used as Celery result backend 

Severity: moderate

Affected versions:

- Apache Airflow Celery provider 3.3.0 through 3.4.0
- Apache Airflow 1.10.0 before 2.7.0

Description:

Insertion of Sensitive Information into Log File vulnerability in Apache Ai=
rflow Celery provider, Apache Airflow.

Sensitive information logged as clear text when rediss, amqp, rpc protocols=
 are used as Celery result backend
Note: the=C2=A0vulnerability is about the information exposed in the logs n=
ot about accessing the logs.

This issue affects Apache Airflow Celery provider: from 3.3.0 through 3.4.0=
; Apache Airflow: from 1.10.0 through 2.6.3.

Users are recommended to upgrade Airflow Celery provider to version 3.4.1=
=C2=A0and Apache Airlfow to version 2.7.0 which fixes the issue.

Credit:

husseinawala (finder)

References:

https://github.com/apache/airflow/pull/34954
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46215

