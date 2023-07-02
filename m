Received: (qmail 1661 invoked by uid 550); 2 Jul 2023 10:43:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17591 invoked from network); 2 Jul 2023 10:16:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <77145bb1-a648-e46c-1159-5286c4f3b000@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 02 Jul 2023 10:16:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35797: Apache Airflow Hive Provider Beeline RCE with
 Principal 

Severity: moderate

Affected versions:

- Apache Airflow Apache Hive Provider before 6.1.1

Description:

Improper Input Validation vulnerability in Apache Software Foundation Apach=
e Airflow Hive Provider.
This issue affects Apache Airflow Apache Hive Provider: before 6.1.1.

Before version 6.1.1 it was=C2=A0possible to bypass the security check to R=
CE via
principal parameter. For this to be=C2=A0exploited it requires access to mo=
difying the connection details.

It is recommended updating provider version to 6.1.1 in order to avoid this=
=C2=A0vulnerability.

Credit:

id_No2015429 of 3H Secruity Team (reporter)

References:

https://github.com/apache/airflow/pull/31983
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-35797

